#!/bin/sh
ESCAPE=$(zenity --width=300 --height=200 --list --text="Select exit action" --title="Logout" --column "I want to..." "shutdown" "reboot" "lock" "suspend" "exit")
	case "$ESCAPE" in
		"shutdown")
			systemctl poweroff;;
		"reboot")
			systemctl reboot;;
		"suspend")
			#betterlockscreen -l blur -t "S_Greyowl is Away";;
            systemctl suspend;;
		"lock")
			$HOME/bin/scripts/lockscreen.sh;;
      #betterlockscreen -l blur -t "S_Greyowl is Away";;
		"exit")
            if [ $DESKTOP_SESSION == "i3" ]; then
                i3-msg exit
            elif [ $DESKTOP_SESSION == "awesome" ]; then
                awesome-client 'awesome.quit()'
            fi
            ;;
           *)
            notify-send "Not yet...";;
    esac
