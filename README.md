# 「○○くんのために一所懸命書いたものの結局○○くんの卒業に間に合わなかった GLFW による OpenGL 入門 (draft版)」 に目次をつける

和歌山大学システム工学部の床井浩平先生が[GLFW による OpenGL 入門 (draft版)](https://github.com/tokoik/tokoik.github.io/tree/master#:~:text=4%20years%20ago-,GLFWdraft.pdf,-update%20gg/index)を公開されています。 [^1] [^2]

このPDFには目次が付いていないので、目次を追加したいと思います。

## 使い方

以下を実行してください。すると、`GLFWdraft_with_toc.pdf`

```shell
make
```

ただし、本プロジェクトの`Makefile`は、macOS 13.2の環境でのみ動作確認しています。
また、以下の外部ツール、リポジトリに依存します。

- bash
- curl
- ghostscript
- git
- python3
- [yutayamamoto/pdfoutline: A command line tool for adding an outline to pdf files](https://github.com/yutayamamoto/pdfoutline)

`Makefile`のコマンドのパスの定義を環境に合せて設定してください。

```Makefile
# commands
CURL = curl
GS = gs
GIT = git
PYTHON3 = python3
```

## 目次情報について

[`toc.txt`](./toc.txt)は目次情報のファイルになります。

[yutayamamoto/pdfoutline: A command line tool for adding an outline to pdf files](https://github.com/yutayamamoto/pdfoutline)を利用して、目次情報をPDFに追加しています。

必要な場合は、[`toc.txt`](./toc.txt)を修正して、再度PDFを作成しなおしてください。

[^1]: 書籍[グラフィックス・アプリ」制作のためのOpenGL入門](https://www.kohgakusha.co.jp/books/detail/978-4-7775-2056-5)としても、出版されていたようですが既に絶版のようです。
[^2]: サンプルソースは[tokoik/glfw3sample: 「GLFWによるOpenGL入門」のサンプルプログラム](https://github.com/tokoik/glfw3sample)にあります。
