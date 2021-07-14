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
* has_many :items
* has_many :buys

## items table

| Column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| title                               | string     | null: false       |
| detail                              | text       | null: false       |
| category_id                         | integer    | null: false       |
| condition_id                        | integer    | null: false       |
| burden_id                           | integer    | null: false       |
| area_id                             | integer    | null: false       |
| day_id                              | integer    | null: false       |
| price                               | integer    | null: false       |
| user                                | references | foreign_key: true |

### Association
belongs_to :user
has_one :buy

## adds table

| Column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| zip                                 | string     | null: false       |
| area_id                             | integer    | null: false       |
| muni                                | string     | null: false       |
| block                               | string     | null: false       |
| building                            | string     |                   |
| phonenum                            | string     | null: false       |
| buy                                 | references | foreign_key: true |

* belongs_to :buy

## buys table
| Column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| post                                | references | foreign_key: true |
| user                                | references | foreign_key: true |

belongs_to :user
has_one :add
belongs_to :item