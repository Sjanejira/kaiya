const {RtcTokenBuilder, RtcRole} = require("agora-access-token");
// Rtc Examples
const appID = "2058c3b4fc3b40a89acfc6d01923f60f";
const appCer = "980e3350e1b84b68a48cd3ce7eb49e59";
const channelName = "1223";
const uid = 0;
const role = RtcRole.PUBLISHER;

const expirationTimeInSeconds = 3600;

const currentTimestamp = Math.floor(Date.now() / 1000);

const pri = currentTimestamp + expirationTimeInSeconds;


// Build token with uid
const tokenA =
RtcTokenBuilder.buildTokenWithUid(appID, appCer, channelName, uid, role, pri);
console.log("Token With Integer Number Uid: " + tokenA);

