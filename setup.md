# 事前準備

## ツール類の準備

1. エディタのインストール
    - おすすめは VSCode https://code.visualstudio.com/
    - VSCodeの場合は、OPA extensionもインストールしておくと便利 https://marketplace.visualstudio.com/items?itemName=tsandall.opa
2. OPAコマンドのインストール
    - 参考 https://www.openpolicyagent.org/docs/latest/#running-opa
    - ローカル環境で `opa version` が実行できていればOK
3. gitでリポジトリをcloneできるようにする
    - 具体的には https://github.com/m-mizutani/seccamp-2023-b7 のリポジトリをcloneできるようにする
    - 講義直前まで更新される可能性あり
4. GitHubアカウントを作成する（すでにある場合はそのアカウントでOK）
    - パブリックリポジトリを作成できるアカウントであること
5. (optional) aws cli コマンドのインストール
    - 参考 https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
    - 確認作業のため、あると便利かもしれません

## 予備知識

事前学習という程ではないのですが、AWSのEC2を題材とした説明をするので、EC2の基本的な概念を知っていると理解が早いかもしれません。特にEC2 instanceとSecurity Groupについて取り扱いますが、「EC2インスタンスを立ち上げて、そのインスタンス上でなんらかのサービスを動かす」ということができる程度で十分です。講義中も適宜補足説明をするようにします。

- Amazon EC2: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts.html
- Security Group: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-security-groups.html

