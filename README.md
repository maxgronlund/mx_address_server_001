# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
  $ git push origin master
  $ heroku run rake db:migrate --app mx-address-server-001

* Migrations
  $ heroku run --app mx-address-server-001 rake db:migrate

rails g scaffold mx_peer url ip first_seen:datetime last_seen:datetime response_time:time node_type distance:integer uuid:uuid trust:integer public_key:text
