# DB 設計

## users table

| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| nickname           | string              | null: false             |
| email              | string              | null: false ,unique: true |
| encrypted_password | string              | null: false             |
| name               | string              | null: false             |
| kananame           | string              | null: false             |
| birth              | string              | null: false             |


### Association

* has_many :post
* has_many :buying

## posts table

| Column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| title                               | string     | null: false       |
| detail                              | text       | null: false       |
| category_id                         | integer    | null: false       |
| condition_id                        | integer    | null: false       |
| burden_id                           | integer    | null: false       |
| area_id                             | integer    | null: false       |
| days_id                             | integer    | null: false       |
| price                               | text       | null: false       |
| user                                | references | foreign_key: true |

### Association
belongs_to :user
has_one :buying

## adds table

| Column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| zip                                 | string     | null: false       |
| area_id                             | integer    | null: false       |
| muni                                | string     | null: false       |
| block                               | string     | null: false       |
| building                            | string     |                   |
| phonenum                            | string     | null: false       |
| user                                | references | foreign_key: true |

* has_one :buying

## buyings table
| Column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| product                             | string     | null: false       |
| user                                | references | foreign_key: true |

has_one :add
belongs_to :post