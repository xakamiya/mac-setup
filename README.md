## Ansible Role: Mac セットアップ

### GitHubにあるリポジトリをローカルにcloneする
```
$ cd <作業ディレクトリ>
$ git clone https://github.com/xakamiya/mac-setup.git
$ cd mac-setup
```

### xcode コマンドラインをインストール
```
$ sudo xcodebuild -license
```

### 権限の変更
```
$ sudo chown -R $(whoami):admin /usr/local
```

### brewのインストール
```
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
インストール後にbrewをアップデートします。
```
$ brew update
```

### ansibleのインストール
```
$ brew install ansible
```
ansibleインストール後に確認します。
```
$ ansible --version
ansible 2.0.0.2
  config file = 
  configured module search path = Default w/o overrides
```

### playbookを実行
```
$ ./scripts/mac-setup-ansible.sh
```


