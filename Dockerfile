FROM jdeathe/centos-ssh

MAINTAINER Arnaldo Bertoni Júnior <arnaldo.bertoni01@fatec.sp.gov.br>

RUN	echo "Starting..." \
	&& yum -y update \
	&& yum -y install mysql-server \
	&& /sbin/service mysqld start \
	&& /usr/bin/mysqladmin -u root password 'root' \
	&& sed -i -e"s/^symbolic-links\s*=\s*0/symbolic-links=0\nbind-address = 0.0.0.0/" /etc/my.cnf \
	&& echo "GRANT ALL ON *.* TO 'root'@'%' IDENTIFIED BY 'root'; FLUSH PRIVILEGES;" | /usr/bin/mysql -u root -p'root' \
	&& ifconfig eth0 | grep inet | awk '{ print $2 }' \
	&& /sbin/service mysqld restart \
	&& /sbin/service mysqld status \
	&& echo "Stopping..."

CMD ["/tmp/external/run.sh"]

EXPOSE 3306
