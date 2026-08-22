# CyberLab Web Application Security Lab

## Date

August 22, 2026

## Objective

Build a basic Python Flask web application to understand how
web applications process HTTP requests, user input, authentication,
and application responses.

## Environment

- Ubuntu Server 24.04
- Python 3.12.3
- Flask 3.1.3
- Apache 2.4.58
- UFW
- curl
- UTM virtual machine

## Application Architecture

Current architecture:

Mac Host
    |
    | HTTP
    v
CyberLab Ubuntu VM
    |
    +-- Apache :80
    |
    +-- Flask :5000
          |
          +-- /
          +-- /login
          +-- /search
          +-- /admin

Flask is currently bound to 127.0.0.1:5000 and is being tested
independently before being placed behind Apache.

## Routes Created

### /

Main application page.

### /login

Login endpoint supporting GET and POST requests.

### /search

Placeholder for future application functionality.

### /admin

Placeholder for future authorization functionality.

## Authentication Testing

Tested successful and unsuccessful login attempts using curl.

Example successful request:

POST /login

Result:

HTTP 200

Example unsuccessful request:

POST /login

Result:

HTTP 401 Unauthorized

## Application Logs

Flask development server recorded requests including:

- Timestamp
- Source IP
- HTTP method
- Requested path
- HTTP status code

Example:

127.0.0.1 - - [22/Aug/2026 05:47:47] "POST /login HTTP/1.1" 401 -

127.0.0.1 - - [22/Aug/2026 05:50:47] "POST /login HTTP/1.1" 200 -

## What I Learned

- Flask can route HTTP requests to Python functions.
- GET requests can retrieve application resources.
- POST requests can submit data to an application.
- Flask can access submitted form data through request.form.
- Applications can return different HTTP status codes depending
  on the result of an operation.
- HTTP 200 can indicate a successful application operation.
- HTTP 401 can indicate an authentication failure.
- Application logs can be used to observe authentication activity.
- Timestamps help correlate application activity with testing.
- A web server and a web application are separate layers.
- Apache can serve as the front-end web server while Flask provides
  application functionality.

## Security Relevance

This application is intentionally being developed as a controlled
cybersecurity laboratory.

The login functionality provides a foundation for studying:

- Authentication
- Sessions
- Authorization
- Input validation
- Application logging
- Secure password handling
- Access control
- Web application security testing

## Next Steps

- Implement sessions
- Separate authentication from authorization
- Add a database
- Store users securely
- Implement password hashing
- Add application logging
- Place Flask behind Apache using a reverse proxy
- Perform controlled security testing
- Analyze application logs during testing
