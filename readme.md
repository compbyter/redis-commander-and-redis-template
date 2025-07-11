[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/deploy/redis-redis-commander-web-ui?referralCode=cXPwOK)

# Deploy and Host Redis + Redis Commander Web UI on Railway

This template allows you to deploy Redis Commander automatically connected to Redis with a single click. It simplifies setting up a Redis instance alongside a Web UI for easy management and visualization.

## About Hosting Redis + Redis Commander Web UI

Deploying Redis + Redis Commander Web UI on Railway requires no parameters or complex setup. With a single click, you can deploy both Redis and Redis Commander together, where Redis Commander automatically connects to the Redis instance. This makes it effortless to visualize and manage your Redis databases through a Web UI.

## Common Use Cases

- Setting up a new Redis database with an integrated Web UI for management
- Visualizing and managing an existing Redis database through a Web UI
- Quickly deploying Redis and Redis Commander for development or testing purposes

## Dependencies for Redis + Redis Commander Web UI Hosting

- None. The Dockerfile and all dependencies are handled automatically.

### Deployment Dependencies

- Dockerfile maintained here: [GitHub - redis-commander-and-redis-template](https://github.com/compbyter/redis-commander-and-redis-template)
- Redis Commender: https://hub.docker.com/r/rediscommander/redis-commander

### Implementation Details

- The Dockerfile in the repository automatically sets up both Redis and Redis Commander, making deployment on Railway simple and hassle-free.

- If you want to connect additional Redis databases, you can do so by setting the `REDIS_HOSTS` environment variable.

- To add more Redis instances, go to your Railway project’s environment variables and update `REDIS_HOSTS` with a comma-separated list of Redis connection strings.

- Each Redis connection string should follow this pattern:

  ```
  dbname:host:port:0:password
  ```

- For example, starting from the default connection:

  ```
  REDIS_HOSTS=myredis:${{Redis.RAILWAY_TCP_PROXY_DOMAIN}}:${{Redis.RAILWAY_TCP_PROXY_PORT}}:0:${{Redis.REDIS_PASSWORD}}
  ```

  you can add another Redis database like this:

  ```
  REDIS_HOSTS=myredis:${{Redis.RAILWAY_TCP_PROXY_DOMAIN}}:${{Redis.RAILWAY_TCP_PROXY_PORT}}:0:${{Redis.REDIS_PASSWORD}},dbname:host:port:0:password
  ```

This setup enables Redis Commander to connect and manage multiple Redis instances simultaneously.

## Why Deploy Redis + Redis Commander Web UI on Railway?

Railway is a singular platform to deploy your infrastructure stack. Railway will host your infrastructure so you don't have to deal with configuration, while allowing you to vertically and horizontally scale it.

By deploying Redis + Redis Commander Web UI on Railway, you are one step closer to supporting a complete full-stack application with minimal burden. Host your servers, databases, AI agents, and more on Railway.
