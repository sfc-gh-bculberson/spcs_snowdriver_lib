# Connection Test Python Sample

## Build docker container
```
   docker build -t connection_test_python:v0.1 .
```

## Test container locally

To test your conatiner locally, update the environment file [env.lit](./env.list0 with your connection credentials and run the docker command below.
```
   docker run -it --rm --name connection_test --env-file env.list  connection_test_python:v0.1 /bin/bash -c ". connector/bin/activate;python connection_test.py"
```
You should see a similar output referencing your snowflake account id.
```
   [('successfully connected to HBB49926',)] 
```

## Test container in SPCS

Run [test script](./test.sql) in a snowsight worksheet.
You should see a similar output referencing your snowflake account id.
```
   [('successfully connected to HBB49926',)] 
```

