# テーブル設計

## scores テーブル

| Column             | Type      | Options           |
| ------------------ | --------- | ----------------- |
| floor_score        | integer   | null: false       |
| pommel_score       | integer   | null: false       |
| rings_score        | integer   | null: false       |
| Vault_score        | integer   | null: false       |
| parallel_score     | integer   | null: false       |
| horizontal_score   | integer   | null: false       |
| athlete            | reference | foreign_key: true |

### Association
- belongs_to :game
- belongs_to :athlete


## games テーブル

| Column             | Type      | Options                        |
| ------------------ | ------    | ------------------------------ |
| game_name          | string    | null: false                    |
| day                | date      | null: false                    |
| venue              | string    | null: false                    |
| prefecture_id      | integer   | null: false                    |
| score              | reference | null: false, foreign_key: true |

### Association
- has_many :scores
- has_one  :order


## athletes テーブル

| Column        | Type      | Options           |
| ------------- | --------- | ----------------- |
| athlete_name  | string    | null: false       |
| old           | integer   | null: false       |
| school_career | string    | null: false       |
| prefecture_id | integer   | null: false       |
| affiliation   | reference | foreign_key: true |

### Association
- has_many :scores
- belongs_to :affiliation


## affiliations テーブル

| Column          | Type      | Options     |
| --------------- | --------- | ------------|
| affilation_name | string    | null: false |

### Association
- belongs_to :athlete
