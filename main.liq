#!/usr/bin/liquidsoap
source = playlist.once("/home/playlist.m3u")

output.shoutcast (%mp3,
    host=getenv("SHOUT_HOST"),
    port=int_of_string(getenv("SHOUT_PORT")),
    password=getenv("SHOUT_PASSWORD"),
    fallible=true,
    source)

def shutdown_wrapper()
    shutdown()
    -1.0
end

# replace the number below with the duration of the stream in seconds
add_timeout(205.0, shutdown_wrapper)
