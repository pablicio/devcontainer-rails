#!/bin/bash
echo "Install dependencies"

echo "Updating RubyGems..."
gem install bundler -v 2.4.6
rvm install 2.7.8

echo "Installing dependencies..."
bundle install

echo "Creating database..."
rails db:setup

echo "Done!"

# OBS MUDAR
# POSTGRESQL_USER='postgres'
# POSTGRESQL_HOST=postgres
# POSTGRESQL_PASSWORD='postgres'
# REDIS_URL=redis://redis:6379
# MESSAGE_BROKER_URL='amqp://guest:guest@rabbitmq:5672'
# AMZ_MQ_HOST=rabbitmq

