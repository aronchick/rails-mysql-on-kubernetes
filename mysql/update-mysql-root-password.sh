#!/bin/bash
[ -f /etc/secrets/mysql-root-password ] && [ -z "$MYSQL_ROOT_PASSWORD" ] && \
  mysql -uroot -p$MYSQL_ROOT_PASSWORD -e "UPDATE mysql.user SET authentication_string = PASSWORD('`cat /etc/secrets/mysql-root-password`') WHERE User = 'root'; FLUSH PRIVILEGES;" && unset MYSQL_ROOT_PASSWORD
