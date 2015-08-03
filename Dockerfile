FROM sameersbn/gitlab-ci-runner:latest
MAINTAINER riley.ross@gmail.com

RUN apt-get update && \
    apt-get install -y git rubygems \
    gem install --no-document bundler && \
    rm -rf /var/lib/apt/lists/* # 20150613