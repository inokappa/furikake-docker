FROM ruby:latest
MAINTAINER inokappa
RUN gem install furikake --no-ri --no-rdoc
ENTRYPOINT ["furikake"]
CMD ["help"]
