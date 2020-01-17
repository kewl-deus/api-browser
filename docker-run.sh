#!/bin/bash

#docker run -it --entrypoint /bin/sh api-browser
#docker run -d -e GENERATOR_HOST=http://127.0.0.1 -p 8080:8000 api-browser

#current_ip=´ifconfig -a |grep inet |grep -v '127.0.0.1' |grep -v 'inet6' |awk '{print $2}'´
current_ip=$(ifconfig -a |grep inet |grep -v '127.0.0.1' |grep -v 'inet6' |awk '{print $2}')

#echo $current_ip
#echo GENERATOR_HOST=http://$current_ip

docker run -it -e GENERATOR_HOST=http://$current_ip -p 8000:8080 api-browser
