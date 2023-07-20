#!/bin/bash

echo '[+] Looping through user RPC file'
echo '[+] Dumping into dumped_rpc_user_list.list'
date > dumped_rpc_user_list.list
cat $2 | while read line ;
do
        echo "----- $line ------" >> dumped_rpc_user_list.list
        rpcclient -U '%' $1 --command "queryuser $line" >> dumped_rpc_user_list.list;
done

echo '[+] Done!'
