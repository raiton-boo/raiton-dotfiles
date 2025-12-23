# raiton's Dotfiles

![OS](https://img.shields.io/badge/OS-macOS%20Apple%20Silicon-000000?style=for-the-badge&logo=apple) ![Shell](https://img.shields.io/badge/Shell-zsh-4EAA25?style=for-the-badge&logo=zsh&logoColor=white) ![Git](https://img.shields.io/badge/Source_Control-Git-F05032?style=for-the-badge&logo=git&logoColor=white)

![Editor](https://img.shields.io/badge/Editor-Vim-019733?style=for-the-badge&logo=vim&logoColor=white) ![Theme](https://img.shields.io/badge/Theme-Dracula-BD93F9?style=for-the-badge&logo=dracula&logoColor=white) ![Mise](https://img.shields.io/badge/Runtime-Mise-blue?style=for-the-badge&logo=package) ![Homebrew](https://img.shields.io/badge/Package-Homebrew-FBB03B?style=for-the-badge&logo=homebrew&logoColor=white)

![AI-Powered](https://img.shields.io/badge/Powered_by-Gemini-4285F4?style=for-the-badge&logo=google-gemini&logoColor=white) ![License](https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge)

---

ターミナル環境を「最強の武器」に変えるための設定とツールの管理。

## 🚀 モダン・コマンド (標準コマンドの強化版)

これらは `.zshrc` のエイリアスで自動的に置き換えられます。

| 分類                | 標準 (Old) | 強化版 (New) | 特徴                                            |
| :------------------ | :--------- | :----------- | :---------------------------------------------- |
| **ファイル一覧**    | `ls`       | **`eza`**    | アイコン表示、Git 状態、ディレクトリ優先表示。  |
| **ファイル閲覧**    | `cat`      | **`bat`**    | 行番号付き、シンタックスハイライト（Dracula）。 |
| **検索 (ファイル)** | `find`     | **`fd`**     | 爆速。`.gitignore` を考慮し、記述が直感的。     |
| **検索 (文字列)**   | `grep`     | **`rg`**     | 世界最速クラスの検索。再帰検索も一瞬。          |
| **ディスク容量**    | `df`       | **`duf`**    | 棒グラフで空き容量を可視化。                    |
| **フォルダ容量**    | `du`       | **`dust`**   | どのフォルダが容量を食っているかツリー表示。    |

## 🛠 実用ツール

| コマンド | 役割                                        | 終わらせ方 |
| :------- | :------------------------------------------ | :--------- |
| `htop`   | CPU/メモリ/プロセスのリアルタイム監視。     | `q`        |
| `glow`   | Markdown ファイルをターミナルで美しく表示。 | `q`        |
| `gping`  | ネットの応答速度をグラフで表示。            | `q`        |
| `speed`  | ネット回線速度(Mbps)を測定。                | 自動終了   |
| `yt-dlp` | YouTube 等の動画を最高画質でダウンロード。  | `Ctrl+C`   |
| `vhs`    | ターミナル操作を GIF アニメとして録画。     | 自動終了   |
| `ex`     | `p7zip`等を利用した万能解凍(extract)。      | 自動終了   |
| `emoji`  | 絵文字を検索してクリップボードにコピー。    | 自動終了   |

## 🎨 演出・お遊びツール

| コマンド    | 内容                                         | 終わらせ方 |
| :---------- | :------------------------------------------- | :--------- |
| `neofetch`  | OS や PC スペック、ロゴを派手に表示。        | 自動終了   |
| `matrix`    | `cmatrix` によるマトリックス画面。           | `q`        |
| `bonsai`    | `cbonsai` による盆栽。`bonsai-live`で成長。  | `q`        |
| `cowsay`    | 虹色の牛が喋る。`cowsay メッセージ` で実行。 | 自動終了   |
| `fortune`   | 日替わりの格言を Dracula カラーで表示。      | 自動終了   |
| `hack-pass` | `genact` によるパスワード解析風の演出。      | `Ctrl+C`   |
| `sl`        | 画面を蒸気機関車が走り抜ける。               | 自動終了   |

## 📦 管理のルール

- **Homebrew**: `brew bundle dump --force` で `Brewfile` を更新。
- **mise**: `~/.config/mise` はリンク済み。`mise trust` で設定を有効化。
- **Git Commit**: `chore: (設定変更)`, `feat: (ツール追加)` を接頭辞に使用。
- **Git Ignore**: プロジェクトの透明性を保つため、グローバル設定は使わず各リポジトリで `.gitignore` を管理。

---

Created by raiton. Powered by Gemini くん.
