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
* has_many :buyings

## posts table

| Column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| title                               | string     | null: false       |
| image                               | text       | null: false       |
| detail                              | text       | null: false       |
| category                            | text       | null: false       |
| condition                           | text       | null: false       |
| burden                              | text       | null: false       |
| area                                | text       | null: false       |
| days                                | text       | null: false       |
| user                                | references | foreign_key: true |

### Association

- belongs_to :user

## adds table

| Column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| cardnum                             | string     | null: false       |
| cardpass                            | string     | null: false       |
| adress                              | string     | null: false       |
| expiration                          | string     | null: false       |
| user                                | references | foreign_key: true |

- belongs_to :user

## buyings table
| Column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| cardnum                             | string     | null: false       |
| user                                | references | foreign_key: true |

has_many :user
has_many :posts
has_many :adds