# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| profile            | text   | null: false               |

### Association

- has_many :recipes

## recipes テーブル

| Column              | Type       | Options                        |
| ------------------- | ---------- | ------------------------------ |
| title               | string     | null: false                    |
| explanation         | text       | null: false                    |
| time_required_id    | integer    | null: false                    |
| number_of_people_id | integer    | null: false                    |
| category_id         | integer    | null: false                    |
| created_at          | date       | null: false                    |
| updated_at          | date       | null: false                    |
| user                | references | null: false, foreign_key: true |

### Association

- belongs_to :user