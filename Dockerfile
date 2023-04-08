FROM mysql:8
ENV MYSQL_ROOT_PASSWORD mypassword
ENV MYSQL_DATABASE myapp
ENV MYSQL_USER myuser
ENV MYSQL_PASSWORD mypassword
RUN echo "character-set-server=utf8mb4" >> /etc/mysql/conf.d/docker.cnf
RUN echo "collation-server=utf8mb4_unicode_ci" >> /etc/mysql/conf.d/docker.cnf
EXPOSE 3306
CMD ["mysqld"]
