FROM ruby:2.6.6
RUN git clone https://github.com/MStadlmeier/drivesync.git /drivesync
WORKDIR /drivesync
RUN bundle update --bundler \
    && bundle install
