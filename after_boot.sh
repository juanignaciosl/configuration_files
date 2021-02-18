#!/bin/bash

killall rescuetime
killall optimus-manager-qt 
nohup rescuetime & > /dev/null
nohup optimus-manager-qt & > /dev/null
