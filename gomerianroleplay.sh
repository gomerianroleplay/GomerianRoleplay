#!/bin/bash

# ====================:P nfzsndfkszndfjdszfzsbfjszbdfj
export GTA_PATH=/home/Gomerian/GomerianRoleplay
cd $GTA_PATH
while [ true ]; do
	cat {$GTA_PATH}/server_log.txt >> {$GTA_PATH}/full_server_log.txt
	rm {$GTA_PATH}/server_log.txt
	touch {$GTA_PATH}/server_log.txt
	./samp03svr
done
