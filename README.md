# whoopsmonitor-check-redis-connect

Check if the connection to Redis is fine.

## Environmental variables

-   `WM_CONNECTION_STRING` - Redis connection string

## Example

There is an example of the check at Whoops Monitor configuration tab or the `.env` file.

```yaml
WM_CONNECTION_STRING=redis://user:password@host
```

## Output

-   Exit code `0` - Connection is ok.
-   Exit code `2` - Some error appeared.

## Build

```sh
docker build -t whoopsmonitor-check-redis-connect .
```

## Run

```bash
docker run --rm --env-file .env whoopsmonitor-check-redis-connect
```
