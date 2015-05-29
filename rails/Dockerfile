# From: https://rossfairbanks.com/2015/03/06/rails-app-on-docker-using-passenger-image.html

FROM phusion/passenger-ruby21:0.9.15
MAINTAINER Ross Fairbanks "ross.fairbanks@gmail.com"

# Set correct environment variables.
ENV HOME /root

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

# Expose Nginx HTTP service
EXPOSE 80

# Remove the default site
RUN rm /etc/nginx/sites-enabled/default

# Install bundle of gems
WORKDIR /tmp
ADD webapp/Gemfile /tmp/
ADD webapp/Gemfile.lock /tmp/
RUN bundle install

# Add the Rails app
ADD webapp /home/app/webapp
RUN chown -R app:app /home/app/webapp

# Add the nginx site and config
ADD nginx.conf /etc/nginx/sites-enabled/webapp.conf
ADD rails-env.conf /etc/nginx/main.d/rails-env.conf

# Start Nginx / Passenger
RUN rm -f /etc/service/nginx/down

# Clean up APT and bundler when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Finally, change to the right directory
WORKDIR /home/app/webapp
