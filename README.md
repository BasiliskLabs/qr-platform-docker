# qr-platform-docker
Very simple docker container to run qr-platform.

It is an exercise for the user to figure out how they want to get redirects.json into the docker container. I am currently using an environment variable to pass in the JSON that I need. This isn't exactly scalable, but for now it will work. The ideal solution if scale is required would be to move to something like MongoDB and store all of the redirects there.
