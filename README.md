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