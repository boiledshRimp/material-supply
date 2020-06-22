## materialsテーブル
|Column|Type|Options|
|------|----|-------|
|text|string|null: false|
|image|text|null: false|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :comments


## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|encrypted_password|string|null: false|
|username|string|null: false|
### Association
- has_many :materials
- has_many :comments


## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|material_id|integer|null: false, foreign_key: true|
|text|text| null: false|
### Association
- belongs_to :material
- belongs_to :user

# encouragement

素材提供アプリ

# DEMO

comigsoon

# Features

WEB素材を無料や無許可で自由に使用できるサービスがあればと以前より思い、クリエイターが相互に自由に投稿、使用できる交流アプリを考案しました。
jpeg、jpg、pngが対応拡張子です。

# Requirement

推奨はGoogle Chromeですが、現行のverのどのブラウザでも動作します。
(古いバージョンのブラウザの場合はレイアウト崩れが生じる可能性があります。)

# Usage

ログイン後に投稿ページをクリックし、画像とテキストの両方を選択した後に、投稿を確定するボタンを押下してください。
