#Python image
FROM python

#WORK DIR
WORKDIR /app

#COPY all files into image file system.
#As we know image contains all source code files and environment
#Container is run based on image therefore it is in container file system.
COPY . /app

# Final step is run the python program on container.
# As we know RUN will execute immediately at time of building the image
# that's actually not correct hence we user CMD instructions
# which at end instruct docker to execute when run the container.
CMD ["python", "rng.py"]


