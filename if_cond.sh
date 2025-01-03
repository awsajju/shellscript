#!/bin/bash

echo "Enter today's day"

read day

    if [ $day -nq "sunday" ];then

    echo "Goto School"

    else 
    echo "today holiday"

    fi