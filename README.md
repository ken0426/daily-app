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