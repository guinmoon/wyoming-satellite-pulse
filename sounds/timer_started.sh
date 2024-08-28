#!/usr/bin/env sh

text="$(cat)"
echo "Timer: ${text}" > /sounds/timer_started.txt
curl -X POST -H "Content-Type: application/json" -d "${text}" http://192.168.1.216:8123/api/webhook/wyoming_timer_started
