#!/bin/bash

STATE="$(echo "$INFO" | jq -r '.state')"
if [ "$STATE" = "playing" ]; then
  MEDIA="$(echo "$INFO" | jq -r '.title + " - " + .artist')"
  sketchybar --set $NAME label="$MEDIA"\
                         drawing=on\
                         click_script="$CONFIG_DIR/playpause.sh"
                         
else
  sketchybar --set $NAME label="Nothing playing"\
                         drawing=on\
                         click_script="$CONFIG_DIR/playpause.sh"

fi
