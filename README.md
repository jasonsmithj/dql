# dql
This container allows dql to be used without depending on Python in the local environment.

## Usage
1. Set AWS_PROFILE to the environment variable of the local terminal.

```bash
$ export AWS_PROFILE=your_aws_profile
```

2. Build the container.

```bash
$ make build
```

3. Query execution

```bash
$ make query QUERY="SELECT * FROM users"
```