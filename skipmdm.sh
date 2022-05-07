csrutil authenticated-root disable;
diskutil mount /Volumes/Macintosh\ HD;
 Mount -uv /Volumes/Macintosh\ HD;	
 cd /Volumes/Macintosh\ HD/System/Library/LaunchAgents;
mkdir tmp;
mv com.apple.ManagedClientAgent.* tmp/;
mv com.apple.mdmclient.* tmp/;
cd ../LaunchDaemons;
mkdir tmp;
mv com.apple.ManagedClient.* tmp/;
mv com.apple.mdmclient.* tmp/;
bless --folder /Volumes/Macintosh\ HD/System/Library/CoreServices --bootefi --create-snapshot;
Echo "Copyright tinhnv.its"