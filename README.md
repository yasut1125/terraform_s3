# terraform_s3
- terraformでs3bucketにファイルを配置する
## direnvでAWSのcredentialを設定
- [direnv](https://github.com/direnv/direnv)

.envrcに必要情報を記載
```
export AWS_ACCESS_KEY_ID="〜"
export AWS_SEACRET_ACCESS_KEY="〜"
export AWS_REGION="ap-northeast-1"
```
```
$ direnv allow
```

## terraformの実行
```
$ terraform init
$ terraform plan
$ terraform apply
```
