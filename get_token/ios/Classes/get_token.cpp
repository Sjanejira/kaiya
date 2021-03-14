#include "../src/RtcTokenBuilder.h"
#include <iostream>
#include <cstdint>
using namespace agora::tools;

extern "C" __attribute__((visibility("default"))) __attribute__((used))
string* get_token() {
  std::string appID  = "2058c3b4fc3b40a89acfc6d01923f60f";
  std::string  appCertificate = "980e3350e1b84b68a48cd3ce7eb49e59";
  std::string channelName= "test";
  uint32_t uid = 0;
  uint32_t expirationTimeInSeconds = 3600;
  uint32_t currentTimeStamp = time(NULL);
  uint32_t privilegeExpiredTs = currentTimeStamp + expirationTimeInSeconds;
  std::string result;
  result = RtcTokenBuilder::buildTokenWithUid(
      appID, appCertificate, channelName, uid, UserRole::Role_Publisher,
      privilegeExpiredTs);

  std::string *token;
  token = result;

  return *token;
}
