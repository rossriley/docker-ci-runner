FROM sameersbn/gitlab-ci-runner:latest
MAINTAINER riley.ross@gmail.com

RUN apt-get update && \
    apt-get install -y git && \
    gem install bundler
