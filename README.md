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

* ...

## Make a change in the migration file (database table)
- make the change in the previous migration file
- run `rails db:rollback`
- run `rails db:migrate`
- Or run `rails db:migrate:redo` to run the two command in one


## Generate Password mailer for reset instructions
- run `rails g mailer Password reset`

## Storing credentials securely
- run `rails credentials:edit --environement=development`

- edit the opened file
` twitter:
    api_key: key
    api_secret: key
`
### Get the stored keys
- run `rails c`
- run `Rails.application.credentials`
- run this for a specific key
`Rails.application.credentials.dig(:twitter, :api_key)`

## Add omniauth gem
-run `bundle add omniauth-twitter`

## Add omniauth middleware to the app
- open /initializer folder
- create omniauth.rb file
- add the keys