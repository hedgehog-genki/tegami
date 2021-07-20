# Neneletterの紹介

このアプリは桃鈴ねね(https://twitter.com/momosuzunene) の活動1周年を記念して作成したアプリケーションです。<br>
このアプリではWEB上で簡単に桃鈴ねねさんへのファンレターを作成することが出来ます。

## 紹介動画はこちら

![result](https://github.com/hedgehog-genki/tegami/blob/master/public/videos/%E3%83%95%E3%82%A1%E3%83%B3%E3%83%AC%E3%82%BF%E3%83%BC%E5%BA%83%E5%91%8A%E7%94%A8%E5%8B%95%E7%94%BB.mp4)

<blockquote class="twitter-tweet"><p lang="ja" dir="ltr">【動画告知】<br>ねねちの1周年を記念してWEB上で簡単にねねちへのファンレターが書けるサービスを作りました!<br><br>詳しい使い方は動画から!<br>投稿された文章を元にファンレターを作成し、発送します!<br>無料で使えるので、ぜひたくさんのファンレターをねねちへ送ろう!<a href="https://t.co/GVP1N8pHau">https://t.co/GVP1N8pHau</a> <a href="https://t.co/Q3wrOMMBQH">pic.twitter.com/Q3wrOMMBQH</a></p>&mdash; ハリネズミの日記🥟ねねちのファンサイト公開中 (@hedgehog_nene) <a href="https://twitter.com/hedgehog_nene/status/1417079268278943745?ref_src=twsrc%5Etfw">July 19, 2021</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

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
