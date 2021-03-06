# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## アプリケーション名
Site Wether

## アプリケーション概要
普通の天気予報よりもピンポイントでタイムリーな天気を知ることができる、天気情報共有アプリケーション。地図上に表示されるピンをクリックすると、投稿された天気情報からその場所の現在の天気を知ることができる。
モード切り替えをすることで、雨雲レーダーを確認することもできる。

## デプロイ先URL
現在作成中

## テスト用アカウント
現在作成中

## 利用方法
ユーザー登録することで天気情報の投稿、他ユーザーのフォロー、拠点登録機能、悪天候通知機能、👍ボタン、スパム報告が可能となる。未ログインユーザーでも投稿閲覧、各種検索機能、雨雲レーダーの使用ができる。

## 目指した課題解決
最近は、天気予報でも予測できないゲリラ豪雨などの異常気象が多発している。本アプリケーションが解決する課題を以下に列挙する。
- 外出した際に自宅付近が悪天候でも、前もって備えることができる
- 洗濯物を干したまま外出しても洗濯物の安否確認ができる
- 雨雲レーダーと投稿を照らし合わせることで局地的な大雨の場所も細かく知ることができ、ゲリラ豪雨から逃げやすくなる
- 拠点登録機能を使用することで、自宅や実家、大切なひとが住む場所が悪天候だった場合に通知がきて、迅速に安否確認などの対応ができる
- 現在地付近が悪天候だった場合に通知が来て、備えることができる
- ピンポイントで好きな場所の天気をいつでも確認できる

## 洗い出した要件
| 機能             | 目的                     | 詳細                                 | ストーリー(ユースケース)                      |
| --------------  | ------------------------ | ----------------------------------- | ------------------------------------------ |
| SNS認証 | 他のSNSとの連携を可能にする | emailでのログインに加えてTwitterアカウントでのログインも可能とする | ・フォロー一覧から閲覧頻度の高いユーザーへクイックアクセスができる<br>・ユーザーをクリックするとそのユーザーの天気情報一覧を見ることができる |
| ユーザー検索機能 | 気になるユーザーを検索する | 検索欄に任意の内容を打ち込むことでユーザーの検索を行える | ・「検索」ボタンから「ユーザー検索」、「場所検索」、「キーワード検索」が表示されるので「ユーザー検索」をクリックする<br>・検索欄に任意の内容を入力すると、当てはまる天気情報が一覧表示される<br>・絞り込み検索で地域を指定して検索することもできる |
| 地図機能 | 地図と連携し天気情報が投稿された場所を可視化する | ユーザーが投稿した天気情報の投稿場所が地図上に表示される | ・ユーザーが投稿した場所が地図上に反映され、投稿場所にピンが立つ<br>・地図をスクロールすることで任意の場所の投稿を直感的に探すことができる<br>・地図上に表示されるピンは最新1時間の天気情報のみ |
| 雨雲レーダー機能 | 雨雲の位置を手軽に確認する | 雨雲レーダーで地図上に雨雲の位置を表示する | ・投稿場所が表示された地図画面で「切り替え」ボタンを押すと、地図が投稿場所表示モードから雨雲表示モードに切り替わる<br>・もう一度「切り替え」を押すことで元のモードに戻すことができる |
| 天気情報投稿機能 | ユーザーが現在地の天気情報を投稿する | 登録ユーザーが現在地をその場所の天気情報を投稿する | ・「投稿」ボタンをクリックすることで現在地の天気情報を投稿することができる<br>・投稿内容は現在地/天気/風の強さ/体感気温/40文字までのコメントから構成される<br>・天気/風の強さ/体感気温の項目はプルダウン形式で必須項目<br>・現在地も必須項目で、GPS取得か手打ちで入力 |
| 投稿数カウント機能 | 天気情報の投稿数に応じたインセンティブを設け、投稿数を増やす | それぞれのユーザーが投稿した天気情報数をカウントする | ・天気情報の投稿が行われると加算され、削除されると減算される<br>・ユーザー登録日を起算日として1年間の投稿数に応じたインセンティブ制度を設けることで、アプリ全体の投稿数を増やしより詳細な天気情報が手に入る環境づくりを行う<br>・インセンティブとしてギフト券やポイントなどを投稿数に応じた内容でプレゼントする |
| いいね機能 | ユーザーが気に入った投稿のいいねを送る | ユーザーが投稿した天気情報にいいねをつける | ・天気情報の詳細画面にある「👍」ボタンをクリックしていいねをつける<br>・いいねされた状態でもう一度クリックでいいねを取り消す<br>・自分がいいねをした天気情報は、いいね一覧表示で確認することができる |
| スパム報告機能 | 投稿内容の精度を上げる | 嘘の情報や不適切な内容の天気情報を報告する | ・嘘の情報や不適切な投稿を見つけた際に、天気情報詳細画面の「報告」ボタンをクリックすると管理者に報告できる<br>・報告された回数が多いユーザーにはアカウントの凍結やログイン権限の剥奪などがされる |
| 場所検索機能 | 地図から視覚的に天気情報を検索する | ユーザーが場所検索を行いその場所の天気情報を表示する | ・地図画面の「検索」ボタンから「場所検索」をクリック選択し、任意の場所を検索する<br>・検索で指定された範囲の天気情報を地図上に表示する |
| キーワード検索機能 | 1度の検索で全ての検索結果を表示する | 検索内容に合致するユーザー、場所、天気情報を全て表示する | ・「検索」ボタンから「キーワード検索」をクリックし任意の内容を入力する<br>・検索結果には当てはまる「ユーザー」、「場所」、「天気情報」の全てが表示される |
| 拠点登録機能 | 自宅などの主要地点の天気をいち早く知る | 地図上に任意の場所を指定する | ・地図上をクリックして場所指定するか、場所検索で指定した位置に拠点をおく<br>・自身のユーザー情報から「拠点情報」ボタンをクリックすると、拠点登録した場所周辺の天気情報を近い順から一覧表示する |
| 悪天候通知機能 | 悪天候をいち早く通知する | 現在地付近と拠点付近に警報が出たり悪天候投稿が多くなった場合に通知する | ・現在地と拠点場所の周辺が悪天候だと通知する<br>・警報が出た時のみ通知/悪天候投稿が多い時も通知/通知しないの3項目から通知の形態が選べる |


# テーブル設計

## usersテーブル

| Column        | Type    | Options                       |
| ------------- | ------- | ----------------------------- |
| name          | string  | null: false                   |
| email         | string  | null: false                   |
| password      | string  | null: false                   |

### Association
- has_many :tweets
- has_many :comments
- has_many :relations
- has_many :favorites


## tweetsテーブル

| Column        | Type    | Options                        |
| ------------- | ------- | ------------------------------ |
| text          | text    |                                |
| image         | string  |                                |
| wether        | integer | null: false                    |
| temperature   | integer | null: false                    |
| wind          | integer | null: false                    |
| prefecture    | integer | null: false                    |
| address       | string  | null: false                    |
| user_id       | integer | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_many :comments
- has_many :favorites


## commentsテーブル

| Column       | Type    | Options                         |
| ------------ | ------- | ------------------------------- |
| comment      | string  | null: false                     |
| user_id      | integer | null: false, foreign_key: true  |
| tweet_id     | integer | null: false, fareign_key: true  |

### Association
- belongs_to :user
- belongs_to :tweet


## relationsテーブル

| Column       | Type    | Options                         |
| ------------ | ------- | ------------------------------- |
| user_id      | integer | null: false, foreign_key: true  |
| follow_id    | integer | null: false, foreign_key: users |

### Association
- belongs_to :user
- belongs_to :follow, class_name: 'User'


## favoritesテーブル

| Column       | Type    | Options                         |
| ------------ | ------- | ------------------------------- |
| user_id      | integer | null: false, foreign_key: true  |
| tweet_id     | integer | null: false, foreign_key: true  |

### Association
- belongs_to :user
- belongs_to :tweet


## ローカルでの動作方法
現在作成中


