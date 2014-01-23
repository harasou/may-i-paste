may-i-paste
===========

iTerm なので、ペーストする際に「改行」が含まれていたら確認ダイアログを表示する Applescript です。

![](http://direct_public_image_url)

## セットアップ方法
ちょっとめんどくさいです。

1. 適当なディレクトリで git clone

   ```
git clone git@github.com:harasou/may-i-paste.git
```

1. iTerm の Script ディレクトリ配下に設置

   ```
mkdir -p ~/Library/Application\ Support/iTerm/Scripts
cp may-i-paste/Paste.scpt ~/Library/Application\ Support/iTerm/Scripts/
```

1. iTerm を再起動。再起動するとメニューに「Script」が表示される。

1. システム環境設定から iTerm のショートカットを登録
   1. シスムて環境設定　▶︎　キーボード　▶︎　ショートカット
   2. アプリケーション　を選択し、＋　をクリック。
   3. 以下の値で、２つのショートカットを登録

       ```
       アプリケーション：iTerm
       メニュータイトル：Paste
       キーボードショートカット：⌘P
       ```
       ```
       アプリケーション：iTerm
       メニュータイトル：Paste.scpt
       キーボードショートカット：⌘V
       ```

## 使い方
`⌘V` するだけ。クリップボードないのテキストに「改行」が含まれていた場合は、確認のダイアログが表示されます。
「改行」がない場合は、そのまま貼付けられます。
