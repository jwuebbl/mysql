FROM mysql:latest

# Copy the SQL script to the container
COPY init.sql /docker-entrypoint-initdb.d/

#Testing the webhook
# # Set the environment variables for the MySQL configuration (optional)
# ENV MYSQL_DATABASE=mydb
# ENV MYSQL_USER=myuser
# ENV MYSQL_PASSWORD=mypassword
# ENV MYSQL_ROOT_PASSWORD=rootpassword