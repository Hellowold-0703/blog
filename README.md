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

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|e-mail|string|null: false, unique: true|
|password|string|null: false|

### Association
- has_many :messages

## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|message|text|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user