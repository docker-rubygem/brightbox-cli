FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.6.0

RUN gem install brightbox-cli --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["_brightbox-bash-completer"]
CMD ["--help"]
