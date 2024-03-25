#! /bin/bash

mainMenu () {
  options="lock screen\nsleep\nhibernate\nshutdown\nrestart\nscreenshot\nplayer\n"
  menu=$(echo -e $options | rofi -dmenu -p "system.sh")
  case "${menu}" in
    "lock screen")
      light-locker-command -l ;;
    "sleep")
      confirmDialogue
      if [[ $val -eq 1 ]]; then
        systemctl suspend
      fi;;
    "hibernate")
      confirmDialogue
      if [[ $val -eq 1 ]]; then
        systemctl hibernate
      fi;;
    "shutdown")
      confirmDialogue
      if [[ $val -eq 1 ]]; then
        systemctl poweroff
      fi;;
    "restart")
      confirmDialogue
      if [[ $val -eq 1 ]]; then
        systemctl reboot
      fi;;
    "screenshot")
      maim -s $HOME/pictures/screenshots/capture$(date --iso-8601=seconds).png ;;
    "player")
      playerMenu ;;
    esac
}

playerMenu () {
  optionsPM="play/pause\nnext\nprevious"
  statusStringPM="$(playerctl metadata xesam:artist):  $(playerctl metadata xesam:title)"
  menuPM=$(echo -e $optionsPM | rofi -dmenu -p "$statusStringPM")

  case "$menuPM" in
    "play/pause") playerctl play-pause ;;
    "next") playerctl next ;;
    "previous") playerctl previous ;;
  esac

}

confirmDialogue () {
  menuCD=$(echo -e "N - go back\nY - continue" | rofi -dmenu -p "Are you sure?")
    case "$menuCD" in
      "N - go back") val=0
	      ;;
      "Y - continue") val=1
	      ;;
    esac
}


mainMenu

