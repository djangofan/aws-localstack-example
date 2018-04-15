# aws-localstack-example

A simple setup to deploy Portainer with custom templates.


# Usage

The default configuration will connect Portainer against the local Docker host, using an nginx container (port 80).

Run it:

```
$ docker-compose up -d
```

And then access Portainer by hitting [http://localhost/portainer](http://localhost/portainer) with a web browser.

![localstack admin](https://github.com/djangofan/aws-localstack-example/raw/master/admin_localstack.png "Localstack Admin")
