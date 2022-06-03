# React Level01 勉強資料

- [React Level01 勉強資料](#react-level01-勉強資料)
  - [reactに必要なjavascript知識](#reactに必要なjavascript知識)
  - [react公式チュートリアル](#react公式チュートリアル)
  - [react公式チュートリアルをFunctional Component + Hooksに書き換える](#react公式チュートリアルをfunctional-component--hooksに書き換える)
  - [はじめのコード](#はじめのコード)
    - [Version Pageの作成](#version-pageの作成)
    - [Version.stories.tsxの作成](#versionstoriestsxの作成)
    - [Version.testとVersionPage.testの作成](#versiontestとversionpagetestの作成)

## reactに必要なjavascript知識

https://medium.com/@SilentHackz/javascript-fundamentals-before-learning-react-ca126e9af2e3

## react公式チュートリアル
https://reactjs.org/tutorial/tutorial.html

以下の質問に答える

1. stateとpropsの区別は？
2. Developer Tools に UI Component を探す
3. parent component は如何 children component のfunctionを呼ぶ
4. なぜ react.js 中に immutability が重要

## react公式チュートリアルをFunctional Component + Hooksに書き換える
https://reactjs.org/docs/hooks-intro.html

以下の質問に答える

* useEffectは何？何時使う？
* useCallback と useMemo は何？何時使う？使う区分は何？


## はじめのコード

### Version Pageの作成

> if you know react-query, skip this.

/api/version を結果を画面に表示するtemplateとpageを作成する

以下の質問に答える

* loading, error,　empty, success 状態の関係性を説明して
* 何故 `!data` は isLoading として使わない？

### Version.stories.tsxの作成
以下の質問に答える

* storybookを利用するメリットは？
* storybook に如何 viewport を設定する？
* storybook は如何 props を変更する？


### Version.testとVersionPage.testの作成

react-testing-library公式チュートリアル
https://github.com/testing-library/react-testing-library

以下の質問に答える

* query / get / findは何が違う？
* なぜreact-testing-libraryを使うか（他のライブラリに対するメリット）
* 如何 get/post API をテストする？