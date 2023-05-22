#!/bin/sh

downloadDir=/tmp
installDir="/lib64"

# インストーラをダウンロードする
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o $downloadDir/awscliv2.zip
# インストーラを解凍する
sudo unzip $downloadDir/awscliv2.zip -d $installDir
# インストールプログラムを実行 & シンボリックリンク作成
sudo $installDir/aws/install -i /usr/local/aws-cli -b /usr/local/bin