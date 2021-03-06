# アプリ名：Daily

## このアプリでできること
- 新規投稿をすることができる
- 投稿内容を編集することができる
- 投稿内容を削除することができる
- ログインとログアウトができる

## 本番環境
- https://daily-30575-app.herokuapp.com/
- テストアカウント（メールアドレス：test197@sample.com , パスワード：123asd）

## このアプリを作成した意図
- このアプリを開発した意図は「自分」の為でした
- これまでの自分は1日を無駄に消費するような日々を送っていました。なので、毎日無駄なく過ごすために日記と言う形でアプリにしました
- その日に行ったことを記録することで、「明日は更によくしよう」と目標が生まれます
- 日記は紙に書くアナログのやり方もありますが、デジタルにすることで、瞬時に過去の記録を振り返ることができます
- 背景の画像はパソコンとノートとスマートフォンが並んでありますが、デジタルの風景も残しつつ、アナログのノートも大事にしたいと言う想いで、背景の画像を選びました。

## 工夫したポイント
 - 工夫したポイントはログアウトする際や、投稿内容を削除する際、画面上にポップアップを表示して、誤ってクリックしてもすぐに画面が遷移しないようにしました
 - トップページではタイトルだけ表示させて、その内容は詳細ページに遷移すると見れるようにし、トップページはシンプルにして見やすくしました

 このアプリ開発で使用した言語等
 - HTML
 - CSS
 - Ruby
 - Ruby on Rails
 - git
 - Git Hub
 - heroku

 ## 今後実装したい機能
 - 検索機能
 - 検索機能は日付やタイトルを入力することで、その内容をトップページで見れるようにすると言うものです。

# dailyのER図

## usersテーブル
| Column             | Type   | Options     |
| -------------------| ------ | ----------- |
|nickname            |string  |null: false  |
|email               |string  |null: false  |
|encrypted_password  |string  |null: false  |

### Association
* has_many :contents

## contentsテーブル
| Column      | Type       | Options         |
| ----------- | -----------| --------------- |
|title        |string      |null: false      |
|contents     |text        |null: false      |

### Association
* belongs_to :users