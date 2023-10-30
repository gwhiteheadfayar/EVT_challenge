## Garrett Whitehead's EVT Challenge Solution

# Requirements to Run:
1. [Docker Engine](https://docs.docker.com/engine/install/) or [Docker Desktop](https://www.docker.com/products/docker-desktop/#)
   * This is necessary for the dockerfile to work and create a container for the website.

2. [NGINX](https://www.nginx.com/resources/wiki/start/topics/tutorials/gettingstarted/)
   * This is necessary for hosting the website inside our docker container.

3. [Git](https://git-scm.com/downloads)
   * This is to clone the repository, as well as use OpenSSL to generate a certificate and key.


# How to Run:
1. Pull the files from this repository in the command prompt using ```git clone [repository link]```.
2. Once the repo is cloned, you're going to need to create an SSL directory. Git doesn't allow empty folders, otherwise I would have left it there.
3. Find OpenSSL.exe within git's directory and modify this command to fit your ssl folder, then run it: ```openssl req -x509 -newkey rsa:4096 -keyout YOUR_SSL_FOLDER/nginx-selfsigned.key -out YOUR_SSL_FOLDER/nginx-selfsigned.crt -days 365``` to create new SSL certificates. These will only be valid for a year, denoted by -days 365. You can cahnge it to be however long you wish.
4. After generating the certificate and key and placing them in the correct folder of the project directory, make sure docker is running.
5. Run the shell script, "start.sh". This will build the container and run it.
6. Navigate to https://localhost, and you will see index.html is up for viewing.

# How to Stop:
1. In the project directory, use the command ```docker ps``` to see the active processes. If the container is active, you will see a table of details. Copy the container ID.
2. Run ```docker stop [CONTAINER ID]```.

## Why did I choose the components I chose? 
* For my web server, I chose NGINX, because my Capstone project is using NGINX to stream video, so I had already been introduced to the technology. Additionally, I chose NGINX because it is known to work well with docker, and upon doing some research, found out is a better solution for lightweight, small projects like this over competitors like Apache.

*I chose to use a dockerfile, and docker, over a config-management tool like Ansible or puppet because i was interested in docker, and as mentioned previously, saw that it played well with NGINX. At my previous internship and J.B. Hunt, docker was used frequently along with kubernetes, and although I personally never was involved with it, I wanted to give it a shot.

Thanks!
