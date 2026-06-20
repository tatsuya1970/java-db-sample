# java-db-sample

2026年6月19日のセミナーにて、バイブコーディングのデモンストレーションとして [Claude Code](https://claude.com/claude-code) に「JAVAでDB付きのウェブアプリを作って」と指示するだけで生成されたサンプルプログラムです。

## 概要

Spring Boot + H2 Database によるタスク管理Webアプリケーションです。

- タスクの作成・編集・削除・完了切替
- H2 Database によるデータ永続化（ファイルベース）
- Thymeleaf によるサーバーサイドレンダリング
- バリデーション付きフォーム

## 技術スタック

| 項目 | 技術 |
|------|------|
| 言語 | Java 17 |
| フレームワーク | Spring Boot 3.2.5 |
| テンプレートエンジン | Thymeleaf |
| データベース | H2 Database（ファイルモード） |
| ORM | Spring Data JPA |
| ビルドツール | Maven |

## 起動方法

### 前提条件

- Java 17 以上がインストールされていること

### 手順

```bash
# リポジトリをクローン
git clone https://github.com/tatsuya1970/java-db-sample.git
cd java-db-sample

# アプリケーションを起動（Maven Wrapperを使用）
./mvnw spring-boot:run
```

ブラウザで http://localhost:8081 にアクセスしてください。

### H2 コンソール

http://localhost:8081/h2-console からデータベースの中身を直接確認できます。

- JDBC URL: `jdbc:h2:file:./data/taskdb`
- ユーザー名: `sa`
- パスワード: （空欄）

## ライセンス

[MIT License](LICENSE)
