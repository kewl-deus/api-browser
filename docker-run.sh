#docker run -it --entrypoint /bin/sh api-browser
#docker run -d -e GENERATOR_HOST=http://127.0.0.1 -p 8080:8080 api-browser

docker run -it -e GENERATOR_HOST=http://127.0.01 -p 8080:8080 api-browser
