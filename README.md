# study_coach

・URL 

- http://18.180.97.43/ 

・Basic Authentication

- userID: admin
- password :2222

・test account
- user: test_user
- email: test@gmail.com
- password :test123

## 利用方法

ユーザー新規登録、もしくはユーザーログイン後、topページで学習予定を登録します。
チャットページにリンクで遷移後は、チャットルーム作成後、メッセージもしくは画像を送信できます。
画面左のルームネームをクリックすれば部屋ごとのチャットルームを利用できます。

## アプリケーション概要	

学習管理とチャット機能付きアプリです。

## 目指した課題解決
日々の学習の予定管理をする。
また、チャット機能を使って学習状況などをユーザー同士で共有できるアプリです。

## 要件定義

| 機能               | 目的                                         | ストーリー（ユースケース）                                                                                                           | 
| ------------------ | -------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------ | 
| カレンダー機能     | 学習予定の管理のため                         | 月単位でのカレンダーを表示することができる。予定、開始時間、終了時間をカレンダー上部に表示させ、予定はカレンダーの中にも表示させる。 | 
| ユーザー管理機能   | ユーザーを管理するため                       | ログイン・ログアウトの機能があり、名前,email,passwordを登録後にログインできる。またページ内でのアカウント編集機能もできる。          | 
| チャットアプリ機能 | 学習管理に必要な情報共有、モチベーション管理 | メッセージと画像の両方をチャットで送信することができる。                                                                             | 
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

## 実装した機能についてのGIFと説明
・topページから予定入力後の画像です。<br>
予定はページネーションで３件ずつ表示される仕組みになっています。

https://gyazo.com/38ca734317ccc841411a26899db13cda

・チャットページに遷移後、ルーム内でチャットができます。

https://gyazo.com/a06a030ba709ad6578912b12b8095feb

## ローカルでの動作方法
Ruby Version : ruby 2.6.5p114 (2019-10-01 revision 67812)<br>
Rails Version : Rails 6.0.3.4

`git clone`し、`bundle install`を実行し、gemのインストール。<br>
データベースの作成のため、`rails db:create`,`rails db:migrate`の実行。<br>
最後に`rails s`を実行するとローカルでクローンされたファイルが実行できる。

### 環境構築
- Ruby/Rails/Scaffolds/VSCode/AWS

## Authors
Kazuhiko Suzuki<br>
- [GitHub](https://github.com/kazuhikosuzuki)<br>
- [Qiita](https://qiita.com/86suzukikazuhiko)