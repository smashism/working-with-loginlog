#!/bin/sh
# for imaging, cleans up files used for loginlog
# based on share from @bp on macadmins.slack.com

# Quit and remove LoginLog
/bin/launchctl unload /Library/LaunchAgents/com.rmn.LoginLog.plist
/usr/bin/killall "LoginLog"
/bin/rm -rf /Library/PrivilegedHelperTools/LoginLog.app
/bin/rm -rf /Library/LaunchAgents/com.rmn.LoginLog.plist

#display message while casper admin cleans up
/usr/local/bin/jamf displayMessage -message "Imaging is now completing, please standby."
