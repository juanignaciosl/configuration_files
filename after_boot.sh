#!/bin/bash

killall rescuetime
killall optimus-manager-qt 
nohup rescuetime &
nohup optimus-manager-qt &
