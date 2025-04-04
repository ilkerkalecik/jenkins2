# Temel imaj olarak Node.js kullan
FROM node:16

# Çalışma dizinini belirle
WORKDIR /app

# Uygulama dosyalarını kopyala
COPY . .

# Uygulamanın bağımlılıklarını yükle
RUN npm install

# Uygulamanın başlatılacak komutunu belirt
CMD ["npm", "start"]

# Konteynerın dışarıya açılacak portunu belirt
EXPOSE 8080
