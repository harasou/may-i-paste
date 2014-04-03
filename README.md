may-i-paste
===========

iTerm で、ペーストする際に「改行」が含まれていたら確認ダイアログを表示する Applescript です。

![dialog](dialog.png)

## セットアップ方法
ちょっとめんどくさいです。

1. 適当なディレクトリで git clone

   ```
git clone git@github.com:harasou/may-i-paste.git
```

1. iTerm の Script ディレクトリ配下に`Paste.scpt`を設置

   ```
mkdir -p ~/Library/Application\ Support/iTerm/Scripts
cd may-i-paste
ln -s "$(pwd)/Paste.scpt" ~/Library/Application\ Support/iTerm/Scripts/Paste.scpt
# cp でも OK
```

1. iTerm の Scriptメニューから Refresh を選択 (Scriptメニューがない場合は、iTerm を再起動する)

   Refresh すると Scriptメニューの中に「Paste.scpt」が表示される。

1. システム環境設定から iTerm のショートカットを登録
   1. システム環境設定　▶︎　キーボード　▶︎　ショートカット
   2. `アプリケーション` を選択し、`＋` をクリック。
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
`⌘V` するだけ。クリップボード内のテキストに「改行」が含まれていた場合は、確認のダイアログが表示されます。

なお以下の場合は、ダイアログが表示されずに、そのまま貼付けられます。
- クリップボード内のテキストに「改行」がない場合
- クリップボード内のテキストが１行しかなく、行末に「改行」がある場合（行末の改行は取り除かれます）
- `⌘P`で貼付けた場合

## 補足
- ダイアログ内の「OK」「Cancel」ボタンが、`tab`キーで選択出来ない場合は、`Control` + `F7` を一度押した後
   試してください。
