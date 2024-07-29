# Use an official Ubuntu as a parent image
FROM ubuntu:20.04

# Set noninteractive installation to avoid getting stuck during the build
ARG DEBIAN_FRONTEND=noninteractive

# Install basics
RUN apt-get update && apt-get install -y \
    wget \
    build-essential \
    python3 \
    python3-pip \
    git \
    python3-dev \
    default-jdk \
    unzip

# Set up locale to avoid locale warnings
RUN apt-get install -y locales && \
    locale-gen en_US.UTF-8 && \
    update-locale LANG=en_US.UTF-8

ENV LANG=en_US.UTF-8 \
    LANGUAGE=en_US:en \
    LC_ALL=en_US.UTF-8

# Install Bowtie2
RUN apt-get install -y bowtie2

# Install Subread for featureCounts
RUN apt-get install -y subread

# Install VSCode's Python debugger dependencies
RUN pip3 install debugpy

# Set the working directory in the container
WORKDIR /data

# Setup the environment variable for Python 3
ENV PYTHONUNBUFFERED=1

# Copy your requirements.txt and install Python dependencies
COPY requirements.txt /data/
RUN pip3 install -r requirements.txt

# Expose the port used by the debugger
EXPOSE 5678

# Command to run when starting the container
CMD ["bash"]
