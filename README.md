# study_coach

・URL 

- http://studycoach.space


## test accountについて
簡単ログイン機能を実装しております。
画面左上の`ゲストログイン（閲覧用）`を押していだければ、
１クリックでユーザー登録なしでログインすることができます。

## 利用方法

ユーザー新規登録、もしくはユーザーログイン後、topページで学習予定を登録します。
チャットページにリンクで遷移後は、チャットルーム作成後、メッセージもしくは画像を送信できます。
画面左のルームネームをクリックすれば部屋ごとのチャットルームを利用できます。

## アプリケーション概要	

学習管理とチャット機能付きアプリです。

## 目指した課題解決
継続して学習するには日々の学習の予定管理が必要と感じた。
また、モチベーションを保つには人との繋がりがあった方が挫折しにくいと考え、
チャット機能を使って学習状況などをアウトプットできる場を作りたいと思い作成した。

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

![top](https://user-images.githubusercontent.com/72254144/99312834-f9292100-28a1-11eb-8023-d01e446efa5a.gif)

・チャットページに遷移後、ルーム内でチャットができます。

![chat](https://user-images.githubusercontent.com/72254144/99312841-faf2e480-28a1-11eb-9401-d54423fee282.gif)

## ローカルでの動作方法
Ruby Version : ruby 2.6.5p114 (2019-10-01 revision 67812)<br>
Rails Version : Rails 6.0.3.4

`git clone`し、`bundle install`を実行し、gemのインストール。<br>
データベースの作成のため、`rails db:create`,`rails db:migrate`の実行。<br>
最後に`rails s`を実行するとローカルでクローンされたファイルが実行できる。

### 環境構築
- Ruby/Rails/JavaScript/AWS(EC2,RDS,Rout53,S3)

### システム設計
<img width="954" alt="システム構成図20-11-24 " src="https://user-images.githubusercontent.com/72254144/100083121-62a1c480-2e8c-11eb-9770-e432733b82d1.png">

## Authors
Kazuhiko Suzuki<br>
- [GitHub](https://github.com/kazuhikosuzuki)<br> 
- [Qiita](https://qiita.com/86suzukikazuhiko)<br>
- [Twitter](https://twitter.com/hiko_tc86)