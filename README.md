bitq -  比特Q
---

## 本地运行
```
sh start.sh
```

## 本地测试
```
sh test.sh
```

## 发布

```
heroku login
heroku container:login
heroku container:push web -a bitqbit
heroku container:release web -a bitqbit
heroku open -a bitqbit
```