# aws-localstack-example

A simple setup to deploy LocalStack + Portainer with custom templates.

[http://localhost:8080/](http://localhost:8080/) or [http://192.168.99.100:8080/](http://192.168.99.100:8080/)

![localstack admin](https://github.com/djangofan/aws-localstack-example/raw/master/admin_localstack.png "Localstack Admin")

# Usage

The default configuration will connect Portainer against the local Docker host, using an nginx container (port 80).

Simply run this command from project root directory:

```
$ docker-compose up -d
```

And then access Portainer by hitting [http://localhost:9000/portainer](http://localhost/portainer) with a web browser (or http://192.168.99.100:9000/ ).

![portainer admin](https://github.com/djangofan/aws-localstack-example/raw/master/portainer.png "Portainer Admin")
