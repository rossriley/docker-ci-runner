FROM sameersbn/gitlab-ci-runner:latest
MAINTAINER riley.ross@gmail.com

RUN apt-get update && \
    apt-get install -y git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev ruby-full && \
    gem install bundler
