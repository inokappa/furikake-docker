FROM ruby:alpine
MAINTAINER inokappa
RUN apk update && \
    apk --no-chache --update add tzdata && \
    gem install furikake --no-ri --no-rdoc
ENTRYPOINT ["furikake"]
CMD ["help"]
