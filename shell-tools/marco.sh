#!/bin/bash
marco(){
	pwd > /tmp/cur_dir.marco
}

polo(){
	if [[ -f /tmp/cur_dir.marco ]]; then
		# 如果存在
		cd "$(cat /tmp/cur_dir.marco)" || return -1
	else
		echo "Please execute marco first!"
	fi	
}
