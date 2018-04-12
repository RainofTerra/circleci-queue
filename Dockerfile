FROM circleci/python:2-jessie

MAINTAINER Edward A. Webb <ollitech@gmail.com>

# Add our custom shipit scripts
COPY src /home/circleci/circleci-queue
ENV QUEUE_HOME /home/circleci/circleci-queue
RUN sudo ln -s $QUEUE_HOME/queueBuildUntilFrontOfLine.py /usr/local/bin/queueBuildUntilFrontOfLine
