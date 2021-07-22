# Neneletterの紹介

このアプリは桃鈴ねね(https://twitter.com/momosuzunene) の活動1周年を記念して作成したアプリケーションです。<br>
このアプリではWEB上で簡単に桃鈴ねねさんへのファンレターを作成することが出来ます。

## 紹介動画はこちら

![fanletter](https://user-images.githubusercontent.com/84561429/126595319-d532065a-2adb-4710-a65f-da83bbcc6dc7.gif)

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
![Untitled Diagram (1)](https://user-images.githubusercontent.com/84561429/126310474-d66816e3-0aa3-4510-bbb2-8d5676a0a7d2.jpg)

## スタッフ

- フロントエンド・サーバーサイドコーディング・インフラ構築：ハリネズミの日記(https://twitter.com/hedgehog_nene)
- トップページ イラスト制作：meri / めり(https://twitter.com/hmn_mrr)

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
