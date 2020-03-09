FROM ruby:2.7

RUN addgroup -S rubocop
RUN adduser -S -g rubocop rubocop

RUN gem install rubocop

ADD matchers.json /matchers.json

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
