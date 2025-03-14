# Running NAM

> Note: Requires X-Server running

## Linux
Install `docker` and `xorg-xhost`
Use `sudo` as required

```sh
    xhost +local:docker
```

```sh
    docker build . -t nam 
```

```sh
    docker run -it --rm --network host -e DISPLAY=$DISPLAY nam
```
