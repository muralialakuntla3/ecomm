# Use the official httpd image as the base image
FROM httpd:2.4
# Copy all the files from the current directory into the apache httpd web root
COPY . /usr/local/apache2/htdocs/
# Expose port 80 (the default HTTP port)
EXPOSE 80
