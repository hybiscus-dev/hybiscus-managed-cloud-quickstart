# Hybiscus Managed Cloud - Quickstart
> This repo provides a simple example showing you how to launch the Managed
> Cloud containers. It can be run very quickly inside a GitHub Codespace. Please note, you will require an Enterprise subscription to access these Docker images.


## ⚒️ Requirements
- Docker

## 🚀 Usage
1. First, create a `.env` file using the contents of `.example.env`. Fill in the values of the environment variables:

- `HYBISCUS_API_KEY` should be an API key from your [dashboard](https://hybiscus.dev/dashboard).
- `API_KEY` is the API key used to protect the endpoints from this deployment
- `REDIS_HOST`, `REDIS_PORT` are the values required to access your Redis database.
- `DATA_DIR` is the local directory where your reports will be saved
- `ENABLE_ASYNC_API` must be set to `TRUE` to enable asynchronous PDF generation

2. Login to Hybiscus's private container registry and pull the image. To do so, run the `./scripts/pull.sh` script providing the username and password as arguments. These can be retrieved from your [dashboard](https://hybiscus.dev/dashboard).

```bash
./scripts/pull.sh <<USERNAME>> <<PASSWORD>>
```

3. First launch the Redis database, followed by the worker and finally the API container:

```bash
./scripts/launch-redis.sh
./scripts/launch-worker.sh
./scripts/launch-api.sh
```


---
&copy; 2025, Hybiscus