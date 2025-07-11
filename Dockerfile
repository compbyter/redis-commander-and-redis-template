FROM rediscommander/redis-commander:latest

# .env kopyalamaya gerek yok çünkü Railway environment variables'ı kendisi sağlar
CMD ["redis-commander"]
