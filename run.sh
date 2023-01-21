#!/bin/bash
rm composer.lock
docker run -it --rm --volume $PWD:/app composer update
docker run -it --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp php:8.2-cli vendor/bin/ecs init
