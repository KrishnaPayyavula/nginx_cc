# Nginx Crash Course Project (nginx_cc)

This project provides a hands-on introduction to Nginx web server setup and configuration. Follow this guide to get started with basic Nginx operations and SSL certificate management.

## Prerequisites

- Nginx installed on your system
- Basic command line knowledge
- OpenSSL for certificate generation

## Quick Start

1. Start Nginx server:

`nginx`


2. Verify installation by opening your browser at `http://localhost`

## Basic Operations

### Server Management

Start, stop, and manage your Nginx server with these commands:

`nginx -h`

`nginx -s reload`

`nginx -s stop`


### Monitoring

Track server activity through access logs:


`tail -f /usr/local/var/log/nginx/access.log`

## SSL Certificate Setup

Set up SSL certificates for secure HTTPS connections:

1. Create certificate directory:

`mkdir ~/nginx_certs_dummy`
`cd ~/nginx_certs_dummy`


2. Generate self-signed certificate:

`openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout nginx-selfsigned.key -out nginx-selfsigned.crt`


## Next Steps

1. Configure virtual hosts
2. Set up reverse proxy
3. Implement load balancing
4. Configure SSL/TLS
5. Optimize performance settings

This project will help you understand core Nginx concepts and prepare you for advanced web server management.

Happy coding!
