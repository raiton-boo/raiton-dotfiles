# raiton's Dotfiles

![OS](https://img.shields.io/badge/OS-macOS%20Apple%20Silicon-000000?style=for-the-badge&logo=apple) ![Shell](https://img.shields.io/badge/Shell-zsh-4EAA25?style=for-the-badge&logo=zsh&logoColor=white) ![Git](https://img.shields.io/badge/Source_Control-Git-F05032?style=for-the-badge&logo=git&logoColor=white)

![Editor](https://img.shields.io/badge/Editor-Vim-019733?style=for-the-badge&logo=vim&logoColor=white) ![Theme](https://img.shields.io/badge/Theme-Dracula-BD93F9?style=for-the-badge&logo=dracula&logoColor=white) ![Mise](https://img.shields.io/badge/Runtime-Mise-blue?style=for-the-badge&logo=package) ![Homebrew](https://img.shields.io/badge/Package-Homebrew-FBB03B?style=for-the-badge&logo=homebrew&logoColor=white)

![AI-Powered](https://img.shields.io/badge/Powered_by-Gemini-4285F4?style=for-the-badge&logo=google-gemini&logoColor=white) ![License](https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge)

---

ターミナル環境を「最強の武器」に変えるための設定とツールの管理。

## 🛠 インストール済みツール一覧

### 🚀 Core Modern Tools

標準の UNIX コマンドを、より高速で多機能に置き換えるツール群。

| 名前               | インストール元 | 役割・説明                                                                 |
| :----------------- | :------------- | :------------------------------------------------------------------------- |
| **`eza`**          | `brew`         | `ls` の代替。アイコン表示や Git 状態をサポートした次世代ファイル一覧表示。 |
| **`bat`**          | `brew`         | `cat` の代替。シンタックスハイライト（Dracula）と行番号表示が可能。        |
| **`fd`**           | `brew`         | `find` の代替。シンプルかつ高速なファイル検索ツール。                      |
| **`ripgrep (rg)`** | `brew`         | `grep` の代替。正規表現や再帰検索を爆速で行う。                            |
| **`zoxide`**       | `brew`         | `cd` の代替。過去の移動履歴を学習し、曖昧な名前でディレクトリ移動。        |
| **`fzf`**          | `brew`         | 履歴検索やファイル選択をインタラクティブに行う曖昧検索エンジン。           |
| **`tldr`**         | `brew`         | `man` の代替。コマンドの難解な説明を省き、実用的な例のみを表示。           |
| **`curlie`**       | `brew`         | `curl` の代替。curl の機能を維持しつつ、出力を美しく整形。                 |
| **`delta`**        | `brew`         | `diff` / `git diff` の代替。構文強調付きで左右並列表示。                   |
| **`doggo`**        | `brew`         | `dig` の代替。人間が読みやすい表形式で DNS 情報を出力。                    |

### 📊 Monitoring & System (システム監視)

リソース管理やネットワークのデバッグに使用。

| 名前               | インストール元 | 役割・説明                                                            |
| :----------------- | :------------- | :-------------------------------------------------------------------- |
| **`bottom (btm)`** | `brew`         | `top` / `htop` の代替。CPU、メモリ、温度をグラフで可視化。            |
| **`procs`**        | `brew`         | `ps` の代替。ポート番号や Docker コンテナ名を表示できるプロセス管理。 |
| **`duf`**          | `brew`         | `df` の代替。ディスク使用量をカラフルな棒グラフで表示。               |
| **`dust`**         | `brew`         | `du` の代替。ディレクトリごとの容量を直感的にツリー表示。             |
| **`gping`**        | `brew`         | `ping` の代替。応答速度（レイテンシ）をグラフでリアルタイム表示。     |
| **`speedtest`**    | `brew`         | インターネットの回線速度（Mbps）を測定。                              |
| **`ipinfo-cli`**   | `brew`         | IP アドレスから位置情報やプロバイダ情報を取得。                       |
| **`iponmap`**      | `npm`          | IP アドレスの場所をターミナル上の世界地図にピンポイント表示。         |
| **`hyperfine`**    | `brew`         | コマンドの実行速度を統計的に正確にベンチマーク測定。                  |

### 🎬 Visual & Fun (演出・お遊び)

モチベーション維持とターミナルの可能性を広げるツール。

| 名前                    | インストール元 | 役割・説明                                                   |
| :---------------------- | :------------- | :----------------------------------------------------------- |
| **`fastfetch`**         | `brew`         | OS 情報や PC スペックを派手なロゴと共に表示。                |
| **`mapscii`**           | `brew`         | ターミナル上でズームや移動ができるベクトル世界地図（AA）。   |
| **`genact`**            | `brew`         | ハッカーが何かを解析しているようなダミーログを生成。         |
| **`cmatrix`**           | `brew`         | 映画「マトリックス」のようなデジタル雨のスクリーンセーバー。 |
| **`cbonsai`**           | `brew`         | ターミナル内に盆栽を生成し、成長させる。                     |
| **`cowsay` / `lolcat`** | `brew`         | キャラクターが喋るメッセージに虹色のグラデーションをかける。 |
| **`emoj`**              | `npm`          | コマンドラインから絵文字を検索・取得。                       |

### 📦 Utilities (便利ツール / 関数)

特定の作業を効率化するためのカスタム設定。

| 名前          | 出自           | 役割・説明                                                        |
| :------------ | :------------- | :---------------------------------------------------------------- |
| **`extract`** | `zsh function` | 形式を問わず、`.zip`, `.tar.gz`, `.7z` 等を一つのコマンドで解凍。 |
| **`port`**    | `zsh function` | 特定のポート番号を使用しているプロセスを即座に特定。              |
| **`weather`** | `zsh function` | `wttr.in` を介して指定した場所の天気を表示。                      |
| **`p7zip`**   | `brew`         | 高圧縮・多形式対応のアーカイブツール（extract 関数で使用）。      |

---

## ⚙️ 管理のルール

- **Homebrew**: `brew bundle dump --force` で `Brewfile` を更新。
- **mise**: `~/.config/mise` はリンク済み。`mise trust` で設定を有効化。

---

Created by raiton. Powered by Gemini.
