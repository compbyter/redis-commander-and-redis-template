FROM rediscommander/redis-commander:latest

# Çalışma dizinine kopyala .env dosyasını (opsiyonel, ortam değişkenleri için)
COPY .env /app/.env

# Varsayılan komut zaten redis-commander, ortam değişkenleri docker run ile verilecek
CMD ["redis-commander"]
