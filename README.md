# vulnim
A vulnerable webapp written in nim. **WIP**

### Docker
To run with docker:

`docker build -t vulnim .`

`docker container run -it -p 80:8080 vulnim`


### Without Docker
Install depencies:

`nimble install prologue`

`nimble install karax`

To run without docker, execute from `/src`:

`logue run`