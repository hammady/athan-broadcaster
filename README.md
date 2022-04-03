# Athan Broadcaster

A simple Liquidsoap script to broadcast Athan to a Shoutcast server then exit.
Requires Docker.

## Build

```bash
docker build . -t athan-broadcaster:1
```

## Run

```bash
docker run -it --rm \
    -e SHOUT_HOST=<HOST> \
    -e SHOUT_PORT=<PORT> \
    -e SHOUT_PASSWORD='<PASSWORD>' \
    athan-broadcaster:1
```
