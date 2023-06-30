# Mendefinisikan base image bernama node dari Docker Hub dengan tag 20.3-alpine3.18
FROM node:20.3-alpine3.18

# Mendefinisikan directory baru bernama app di dalam container dan menjadikannya sebagai working directory
WORKDIR /app

# Menyalin semua berkas package*.json yang ada di local ke working directory di dalam container
COPY package*.json ./

# Menginstal dependency (kebutuhan) aplikasi saat proses pembuatan image
RUN npm install

# Menyalin semua berkas yang ada di local working directory saat ini ke  ke working directory di dalam container (yakni, /app)
COPY . .

# Mengekspos atau membuka port yang akan digunakan oleh container, yakni 3000
EXPOSE 3000

# Mengeksekusi perintah untuk menjalankan aplikasi saat Docker image telah dijalankan sebagai container
CMD ["npm", "start"]
