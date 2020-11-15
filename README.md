# Project Title 

  study_coach

* URL 

- http://18.180.97.43/ 

* Basic Authentication

- userID: admin
- password :2222

* test account
- user: test_user
- email: test@gmail.com
- password :test123

##　利用方法

ユーザー新規登録、もしくはユーザーログイン後、topページで学習予定を登録します。
チャットページにリンクで遷移後は、チャットルーム作成後、メッセージもしくは画像を送信できます。
画面左のルームネームをクリックすれば部屋ごとのチャットルームを利用できます。

## アプリケーション概要	

学習管理とチャット機能付きアプリです。

## 目指した課題解決
日々の学習の予定管理をする。
また、チャット機能を使って学習状況などをユーザー同士で共有できるアプリです。

## 要件定義

|       | ユースケース         |
|            --------------------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |



## 実装予定の機能

ユーザーのグループ機能。カテゴリー別のチャットルームの実装など。

## Database creation

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

##　ローカルでの動作方法

## Authors
Kazuhiko Suzuki
・[GitHub](https://github.com/kazuhikosuzuki)
・[Qiita](https://qiita.com/86suzukikazuhiko)