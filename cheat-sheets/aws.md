```bash
aws configure sso
```

```bash
aws configure list-profiles
```

```bash
aws ecr get-login-password --region us-east-1 --profile AdministratorAccess-ACCOUNT_ID | docker login --username AWS --password-stdin ACCOUNT_ID.dkr.ecr.us-east-1.amazonaws.com
```
