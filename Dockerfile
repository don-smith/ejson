FROM ruby:2.4

MAINTAINER don@antiantonym.com # current
# MAINTAINER thinkbot@outlook.de # original

ENV VERSION=1.2.0
ENV EJSON_KEYDIR=/keydir

RUN gem install ejson --version ${VERSION} --no-format-exec

WORKDIR /keydir

ENTRYPOINT ["ejson"]
CMD ["--version"]
