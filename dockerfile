# menggunakan node versi 14-alpine
FROM node:14-alpine

# pindah ke direktori /app
WORKDIR /app

# menyalin semua file ke dalam container
COPY . .

# tambah environment variabel NODE_ENV dan DB_HOST
ENV NODE_ENV=production DB_HOST=item-db

# menjalankan perintah untuk menginstall dependensi dan build aplikasi
RUN npm install && npm run build

# ekspos port 8080
EXPOSE 8080

# menjalankan aplikasi
ENTRYPOINT [ "npm", "start" ]