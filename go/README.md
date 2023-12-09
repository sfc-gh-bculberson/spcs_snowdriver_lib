# Instructions
1. Install [Go language](https://go.dev/) and [Snowflake Go Driver](https://pkg.go.dev/github.com/snowflakedb/gosnowflake#section-readme)

2. If you don't have a project initialized, set it up:
```
go mod init connection-example
go mod tidy
```

2. Run test:
```
SNOWFLAKE_ACCOUNT=<your_account> \
SNOWFLAKE_DATABASE=<your_database> \
SNOWFLAKE_SCHEMA=<your_schema> \
USER=<user_name> \
PASSWORD=<password> \
go run .
```
