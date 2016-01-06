#!/bin/bash
#-----------------------------------------------------
#  Arquivo:       run.sh
#  Descricao:     Arquivo de configuração de ambiente
#                 do container Mysql
#  Autor:         Arnaldo Bertoni Júnior
#----------------------------------------------------

echo "Began the container..."
echo ""

ifconfig eth0 | grep inet | awk '{ print $2 }'

/sbin/service mysqld start

# Put here your databases that must be inserted
# Don't forget to insert the file dump with the
# same name declared here
databases=("teste1" "teste2")

i=0;

if [ ${#databases[@]} -gt 0 ]; then

	echo "Will be inserted ${#databases[@]} databases"
	echo ""

	for item in "${databases[@]}"; do
		echo "Initializing the process with database '$item'"
		echo ""
		echo "CREATE DATABASE $item;" | /usr/bin/mysql -u root -p'root'
		/usr/bin/mysql -u root -p'root' "$item" < /tmp/external/"$item".sql
	done

fi

sleep 5

tail -f /var/log/mysqld.log
