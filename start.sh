#!/bin/bash
pathProject=$HOME/web/shop.local
pathScript=$HOME/scripts

function check_docker_run() {
	while [[ $(sudo docker ps --filter name=laradock_nginx_1 --filter status=running  --filter status=restarting | wc -l) -eq 1 ]]
       do
          echo "Docker not running"
       done
}


function startWeb() {
	case $1 in
		wjs)
			check_docker_run
			clear
			cd $pathProject
			sudo make wjs
			;;
		jw)
			check_docker_run.sh
			clear
			cd $pathProject
			sudo make jw
			;;
		laravel)
			cd $pathProject
			;;
		up)
			sudo systemctl start docker
			cd $pathProject
			sudo make up 
			;;
		work_directory)
			cd $pathProject
			vim
			;;
		*)
			echo "Неверный параметр"
	esac
}

startWeb $1
