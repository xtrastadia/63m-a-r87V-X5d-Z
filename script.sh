#!/bin/bash
#Цикл создания плотов (кол-во: 4)
for i in {1..4}
do
	chia plots create -k 32 -b 5000 -r 2 -u 128 -t /home/${USER?}/1 -d /home/${USER?}/2 &
done
#ожидание завершения
wait
#перемещение на Google Drive
mv /home/${USER?}/2/*.plot /home/${USER?}/GoogleDrive
#ожидание завершения
wait
#запуск скрипта ещё раз
bash script.sh