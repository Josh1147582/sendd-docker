# sendd-docker

sendd-docker ships sendd in one easily runnable package.

Building:

    git clone https://github.com/Josh1147582/sendd-docker
    cd sendd-docker
    docker build -t sendd-docker .

Running:

    docker run -p 3000:3000 -p 9000:9000 \
    --name=sendd \
    -e "HOST=`curl ipv4.icanhazip.com`" \
    -d \
    sendd-docker

Connect to the server (by default) at port 3000. Port 9000 must also be open for the peer server to communicate with clients.
