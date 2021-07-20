# Neneletterの紹介

このアプリは桃鈴ねね(https://twitter.com/momosuzunene) の活動1周年を記念して作成したアプリケーションです。<br>
このアプリではWEB上で簡単に桃鈴ねねさんへのファンレターを作成することが出来ます。

## 紹介動画について
![GIF](https://user-images.githubusercontent.com/84561429/126263828-c6de882f-eb1f-40e5-a3fd-448b28891acb.gif)
<br>※下記URLにフルバージョンが掲載されています
## URL
http://neneletter.com/

## 利用方法
上記URLにアクセスしていただくことで、ご利用いただけます。<br>
各種機能の紹介
- ユーザー登録機能
  - Googleアカウントを利用してユーザー登録出来ます
- ファンレター投稿機能
  - 投稿した内容を元にファンレターを作成します
  - 作成したファンレターをユーザーにメールします
  - 問題がなければ、ファンレターをカバー株式会社指定の送付先に送付します
- マイページ機能
  - 投稿した文章を確認することが出来ます

## 使用技術
- フロントエンド：HTML・CSS・Javascript
- サーバーサイド：Ruby on Rails
- インフラ：AWS(インフラ構成図は後述)
- DB：MySQL

## インフラ構成図

## スタッフ

- コーディング：ハリネズミの日記(https://twitter.com/hedgehog_nene)
- イラスト制作：meri / めり(https://twitter.com/hmn_mrr)

## テーブル設計

### userテーブル
| Column                 | Type     | Options                 |
| ---------------------- | -------- | ----------------------- |
| name                   |  string  | null: false             |
| email                  |  string  | null: false, default: ""|
| encrypted_password     |  string  | null: false, default: ""|
| reset_password_token   |  string  |                         |
| reset_password_sent_at | datetime |                         |
| remember_created_at    | datetime |                         |

### sns_credentialsテーブル
| Column   | Type       | Options           |
| -------- | ---------- | ----------------- |
| provider |   string   |                   |
| uid      |   string   |                   |
| user     | references | foreign_key: true |

### lettersテーブル
| Column | Type       | Options           |
| ------ | ---------- | ----------------- |
|  text  |    text    |                   |
|  user  | references | foreign_key: true |
