FROM ruby:2.7.0-buster

RUN git clone https://github.com/MStadlmeier/drivesync.git /drivesync
WORKDIR /drivesync
RUN bundle update --bundler \
    && bundle install
