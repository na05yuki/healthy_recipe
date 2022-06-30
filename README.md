# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| profile            | text   |                           |

### Association

- has_many :recipes
- has_many :favorites

## recipes テーブル

| Column              | Type       | Options                        |
| ------------------- | ---------- | ------------------------------ |
| title               | string     | null: false                    |
| ingredient          | text       | null: false                    |
| explanation         | text       | null: false                    |
| time_required_id    | integer    | null: false                    |
| number_of_people_id | integer    | null: false                    |
| category_id         | integer    | null: false                    |
| user                | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :favorites

## favorites テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| user         | references | null: false, foreign_key: true |
| recipe       | references | null: false, foreign_key: true |


### Association

- belongs_to :user
- belongs_to :recipe
