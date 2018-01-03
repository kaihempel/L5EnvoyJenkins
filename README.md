# Jenkins Docker container with Laravel Envoy support

This image is based on the offcial Jenkins image (https://hub.docker.com/_/jenkins/).

Following features added to the base image:
- PHP 7.1
- PHP Composer
- PHPUnit 6
- Laravel Envoy
- node.js

## Using Envoy inside Jenkins

The Envoy shell command "envoy" is globally accessable. Use the shell build step to execute the envoy task.
For full envoy documentation see: https://laravel.com/docs/5.5/envoy

Some examples:

Define a task inside "Envoy.blade.php":
```
@task('composer')
    composer install
@endtask
```

Exceute the "envoy" shell command inside the Jenkins build job:
```
envoy run composer
```

## SSH Authentication

During the first container startup a new SSH key is generated and the public key will be displayed on the shell. The key is stored in home folder under ".ssh/id_rsa" and ".ssh/id_rsa.pub". The default home folder of the Jenkins container is "/var/jenkins_home". The key can easily used inside Jenkins for GIT authentication.