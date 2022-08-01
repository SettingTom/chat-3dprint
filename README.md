## アプリケーション名
 chat-3dprint

## アプリケーション概要
 3Dプリンタで作成した作品を投稿し、交流する。コメント機能で、評価や3Dモデル作成機能などの技術発信をすることで、製作意欲の刺激、技術向上を図る。

## URL
 https://chat-3dprint.herokuapp.com/
 
 ID:admin
 Pass:2222
## テスト用アカウント
 - 一人目

    - メールアドレス:test1@test.com

    - パスワード:111ooo

 - 二人目
 
    - メールアドレス:test2@test.com
 
    - パスワード:222ttt

## 利用方法
### 作品投稿
 1.トップページ(一覧ページ)のヘッダーからユーザー新規登録を行う。
 
 2.新規投稿ボタンから作品の内容(作品名、作品説明、画像、3Dモデル)を入力し、投稿する。
### コメント
 1.一覧ページに表示されている作品の画像から、詳細ページに遷移する。

 2.感想を述べたり、質問をする。

## アプリケーションを作成した背景
Facebookにて、3Dプリンタ作品を投稿し、コメントし合うグループは既にある。しかし3Dビューの機能はない(画面上で3Dデータを360度閲覧、拡大縮小させる機能)。3Dプリンタを扱うものにとって、3Dビューは必須の機能である。よって、3Dビュー機能を実装したチャットアプリを作成するに至った。

## 洗い出した要件
[要件を定義したシート](https://docs.google.com/spreadsheets/d/1MPP1f85oPne2OQ_jagoqOCFubKLM84nPiNviaubQATU/edit#gid=416066170
)

## 実装した機能についての画像やGIFおよびその説明
 主な機能は、ユーザー登録機能、作品投稿機能、コメント機能である。

 トップページに投稿された作品の名前と1枚の写真が表示されている。
 それをクリックすると、詳細ページに遷移する。
 詳細ページでは全ての写真と作品の説明、コメントが合わせて表示される。

 [![Image from Gyazo](https://i.gyazo.com/485b833670d69d69c0b3d938a270f603.png)](https://gyazo.com/485b833670d69d69c0b3d938a270f603)

 [![Image from Gyazo](https://i.gyazo.com/4c657dbb783c96ebb6f8531212ec3872.gif)](https://gyazo.com/4c657dbb783c96ebb6f8531212ec3872)


## データベース設計
[![Image from Gyazo](https://i.gyazo.com/c9cec7ce8afe3bab0bbd5374e0d24b0d.png)](https://gyazo.com/c9cec7ce8afe3bab0bbd5374e0d24b0d)

## 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/317515762537abbdf6837057d80b2393.png)](https://gyazo.com/317515762537abbdf6837057d80b2393)

## 開発環境
- ruby
- html
- css

## 工夫したポイント
 最初は1枚しか画像をできなかったため、複数枚投稿できるようにし、さらに拡大機能を設けた。
 複数の場面、角度の確認や、小さくて見づらい問題の解消を実現した。