# ServerMemo
基本私的な感じ。

なお、一部ログインが必要です(職務上知り得た秘密の流出防止やセキュリティなどの都合)。あしからず。

### 構成
- KUSANAGI Ubuntu

本家KUSANAGIとの変更点
- CentOSからUbuntu LTSに
- preloadとか入っている
- Let's Encrypt Standaloneを同梱(自動更新も近いうちにCronで対応)
- ct_submitを同梱
- KUSANAGIコマンドの削除(ソースコード書きなおすのがめんどくさいだけ)
- ngx_cache_purge,ngx_ct,ngx_pagespeed入りNginx 1.9.9
- KUSANAGI-HHVMからHHVM公式のHHVMに
- HTTPD未同梱
- 私的なのでKUSANAGIでは使わないものまで入っている(Asteriskとか)
など。あとは忘れた。知らん。

### ほぼ一括セットアップ
対象環境: 
- Ubuntu 14.04 LTS
- Debian Jessie(Expelimental Support)
```
cd Script/
./setup.sh
```
このあと機密ファイルが置いてあるところの情報とか聞いてくるのでそれさえ入れればOKな感じ
### ドキュメント
…サーバ構築の際に使うかもしれない秘伝のタレとか入っていたり。

…あといろいろというか諸々というか。
