#include <mutex>
#include <fstream>
#include <ctime>

#include "NtripTask.h"
#include "NetUrl.hpp"
#include "NetQueryBase.hpp"
#include "NetQueryNtrip1.hpp"
#include "RTCMDecoder.hpp"
#include "RTCM3Decoder.hpp"
#include "StringUtils.hpp"
#include "SignalCenter.hpp"

//using namespace gpstk;

NtripTask::NtripTask()
{
    m_bOutputRaw = false;
    m_sRawOutFile = "";
    m_sStreamFormat = "RTCM_3";
    m_decoder = 0;
    m_sRinexPath = "./";
    m_dRnxVer = 3.01;
}

NtripTask::~NtripTask()
{
    delete m_decoder;
}

RTCMDecoder* NtripTask::decoder()
{
    if (m_decoder != 0)
    {
      return m_decoder;
    }

    else
    {
      if (initDecoder() == true)
      {
          return m_decoder;
      }
    }
    return 0;
}

bool NtripTask::initDecoder()
{
    //m_decoder = 0;
    string staID = m_MP.getMountPointID();

    NetUrl mntpntUrl = m_MP.getMountPointUrl();
    string lat  = StringUtils::asString(m_MP.getLatitude());
    string lon  = StringUtils::asString(m_MP.getLongitude());
    string ntripVer = m_MP.getNtripVersion();
    string nmea = "no";

    if(m_sStreamFormat.find("RTCM_3") != string::npos)
    {
        m_decoder = new RTCM3Decoder(staID);
    }

     //sleep 0.1 sec
    this_thread::sleep_for(chrono::milliseconds(100));

    m_decoder->initRinex(staID, mntpntUrl, lat, lon,
                         nmea, ntripVer);
    if(m_decoder->m_rnx)
    {
        m_decoder->m_rnx->setWriteFile(m_bWriteObsFile);
        m_decoder->m_rnx->setFilePath(m_sRinexPath);
        m_decoder->m_rnx->setRinexVer(m_dRnxVer);
    }
    return true;
}

bool NtripTask::run()
{
    string tempVersion = m_MP.getNtripVersion();
    int tempNmeaFlag = m_MP.getnmeaFlag();
    NetUrl tempURL = m_MP.getMountPointUrl();

    /// According to the ntrip version of mountpoint,
    /// select corresponding model of network request.
    /// By default: Ntrip Version 1.0
    NetQueryBase* query = 0;
    if(tempVersion == "1")
    {
        query = new NetQueryNtrip1();
    }
    else if(tempVersion == "2")
    {
    }
    else if(tempVersion == "2S")
    {
    }

    ofstream out;
    if(m_bOutputRaw)
    {
        out.open(m_sRawOutFile.c_str(),ios::out|ios::binary);
    }

    while(1)
    {
        if(tempNmeaFlag)
        {
            // added gga into string
            string gga = "";
			unsigned char* data = (unsigned char *)malloc(4096);
            query->startRequest(tempURL,gga,data);
        }
        else
        {
            try
            {
				unsigned char* data = (unsigned char *)malloc(4096);
                query->startRequest(tempURL, "", data);
                if (query->getStatus() == NetQueryBase::error)
                {
                    return false;
                }
                if(m_bOutputRaw)
                {
                    query->writeRawData(out, data);
                }

                if (!decoder() || query->getStatus() != NetQueryBase::dataReceiveable)
                {
                    continue;
                }

                // Delete old observations
                // -----------------------
                m_decoder->m_obsList.clear();

                // Decode Data
                // -------------
                
				int buffLen = query->getBuffLength();

                if(buffLen > 0)
                {
                    bool decodeState = m_decoder->decode(data, buffLen);
                    if(!decodeState)
                    {
                        continue;
                    }
                }
                free(data);
                data = NULL;

                // Loop over all observations (observations output)
                // ------------------------------------------------
				lock_guard<mutex> guard(m_mutex);
                list<t_satObs>::iterator it = m_decoder->m_obsList.begin();

                list<t_satObs> obsListHlp;

                for(;it!=(m_decoder->m_obsList.end());++it)
                {
                    const t_satObs& obs = *it;
                    CommonTime obsTime = obs._time;
                    string prn = obs._prn.toString();

                    // Check observation epoch
                    // -----------------------
                    if(!m_bOutputRaw)
                    {
                        SystemTime sysTime;
                        CommonTime currTime(sysTime);
                        currTime.setTimeSystem(obsTime.getTimeSystem());
                        const double maxDt = 600.0;
                        if (fabs(currTime - obsTime) > maxDt)
                        {
                            cout << obs._staID << ": Wrong observation epoch(s)" << endl;
                            continue;
                        }
                    }

                    // Check observations coming twice (e.g. KOUR0 Problem)
                    // ----------------------------------------------------
                    if(!m_bOutputRaw)
                    {
                        map<string, CommonTime>::const_iterator it = m_prnLastEpoch.find(prn);
                        if (it != m_prnLastEpoch.end())
                        {
                            CommonTime oldTime = it->second;
                            if(obsTime <  oldTime)
                            {
                                cout << obs._staID <<": old observation " << prn << endl;
                                continue;
                            }
                            else if(obsTime == oldTime)
                            {
                                cout << obs._staID <<": observation coming more than once " << prn << endl;
                                continue;
                            }
                        }
                        m_prnLastEpoch[prn] = obsTime;
                    }

                    string format = "RTCM_3";
                    m_decoder->dumpRinexEpoch(obs, format);

                    // Save observations
                    // -----------------
                    obsListHlp.push_back(obs);
                }
                if(obsListHlp.size()>0)
                {
                    // Send the obsList
                    // ----------------
                    SIG_CENTER->newObs(obsListHlp);
                }

            }
            catch(MountPointNotFound& e)
            {
                cout << e.what() << " in class" << getClassName() << endl;
                return false;
            }
            catch(Exception& e)
            {
				cout << "Error: " << e << " in class" << getClassName() << endl;
            }
            catch(...)
            {
				cout << "unknown error happened in  class: " << getClassName()  << ", URLPath: " <<tempURL.getPath() << endl;
            }
        }
    }
    out.close();
    return true;
}
