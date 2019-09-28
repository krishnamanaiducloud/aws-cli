# Containerized AWS CLI

Manage your AWS services with containerized aws cli.

### Usage
#### Docker
```
$ docker run \
  --env AWS_ACCESS_KEY_ID=<<your_access_key>> \
  --env AWS_SECRET_ACCESS_KEY=<<your_secret_access>> \
  --env AWS_DEFAULT_REGION=us-east-1 \
  srinisbook/aws-cli s3 ls
```

```
$ docker run -v $HOME/credentials:/root/.aws/ \
  srinisbook/aws-cli s3 ls
```

Set alias
```
$ alias aws='docker run --env AWS_ACCESS_KEY_ID=<<your_access_key>> --env AWS_SECRET_ACCESS_KEY=<<your_secret_access>>   --env AWS_DEFAULT_REGION=us-east-1 srinisbook/aws-cli'

$ aws s3 ls
```
