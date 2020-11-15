# Project Title 

  study_coach2020app

* Ruby version

  ruby 2.6.5p114 (2019-10-01 revision 67812) 

## Usage



# Database creation

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :meeting
- has_many :room_users
- has_many :rooms, through: room_users
- has_many :messages

## meetings テーブル

| Column      | Type     | Options     |
| ----------- | -------- | ----------- |
| category    | string   | null: false |
| start_time  | datetime | null: false |
| finish_time | datetime | null: false |

### Association

- belongs_to :user

## rooms テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |

### Association

- has_many :room_users
- has_many :users, through: room_users
- has_many :messages

## room_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

## Authors

Kazuhiko Suzuki


