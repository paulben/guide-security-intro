# guide-security-intro

This is a Liberty secured app, meaning it requires a userid and password.  

It is a copy of the openliberty.io [Securing a web application guide](https://github.com/openliberty/guide-security-intro) `finish` directory. It has a Dockerfile added. See [the guide](https://openliberty.io/guides/security-intro.html) for more info.

To build for docker:
```bash
mvn package
docker build -t test-app-secure .
```

To run in a container locally:
```bash
docker run -d --name test-app-secure -p 9080:9080 -p 9443:9443 test-app-secure
```

To invoke locally in a browser: http://localhost:9080