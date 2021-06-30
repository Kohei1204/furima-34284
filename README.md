# DB 設計

## users table

| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| email              | string              | null: false             |
| password           | string              | null: false             |
| name               | string              | null: false             |
| profile            | text                | null: false             |

### Association

* has_many :posts
* has_many :purchases

## posts table

| Column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| title                               | string     | null: false       |
| detail                              | text       | null: false       |
| user                                | references | foreign_key: true |

### Association

- belongs_to :user

## purchases table

| Column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| cardnum                             | string     | null: false       |
| cardpass                            | string     | null: false       |
| adress                              | string     | null: false       |
| expiration                          | string     | null: false       |
| user                                | references | foreign_key: true |

- belongs_to :user