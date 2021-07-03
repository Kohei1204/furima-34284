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
| price                               | text       | null: false       |
| user                                | references | foreign_key: true |

### Association
- belongs_to :buyings

## adds table

| Column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| zip                                 | string     | null: false       |
| city                                | string     | null: false       |
| muni_id                             | integer    | null: false       |
| block                               | string     | null: false       |
| building                            | string     | null: false       |
| phonenum                            | string     | null: false       |

* has_many :buyings

## buyings table
| Column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| product                             | string     | null: false       |
| user                                | references | foreign_key: true |

- belongs_to :adds