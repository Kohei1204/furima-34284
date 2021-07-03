# DB 設計

## users table

| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| nickname           | string              | null: false             |
| email              | string              | null: false ,unique: true |
| encrypted_password | string              | null: false             |
| firstname          | string              | null: false             |
| lastname           | string              | null: false             |
| fkananame          | string              | null: false             |
| lkananame          | string              | null: false             |
| birth              | date                | null: false             |


### Association
* has_many :posts
* has_many :buyings

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
| price                               | integer    | null: false       |
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
| user_id                             | references | foreign_key: true |

* belongs_to :buying

## buyings table
| Column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| post_id                             | references | foreign_key: true |
| user_id                             | references | foreign_key: true |

belongs_to :user
has_one :add
belongs_to :post