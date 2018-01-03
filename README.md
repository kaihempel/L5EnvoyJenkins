# Jenkins Docker container with Laravel Envoy support

This image is based on the offcial Jenkins image (https://hub.docker.com/_/jenkins/).

Following features added to the base image:
- PHP 7.1
- PHP Composer
- PHPUnit 6
- Laravel Envoy
- node.js

## Using Envoy inside Jenkins

The Envoy shell command "envoy" is globaly accessable. Use the shell build step to execute the envoy task.