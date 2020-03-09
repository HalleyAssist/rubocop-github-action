FROM ruby:2.7

RUN gem install rubocop

ADD matchers.json /matchers.json

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
