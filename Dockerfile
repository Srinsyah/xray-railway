# Gunakan image resmi xray terbaru
FROM teddysun/xray:latest

# Salin file konfigurasi dan sertifikat ke dalam container
COPY config.json /etc/xray/config.json
COPY cert.pem /etc/xray/cert.pem
COPY key.pem /etc/xray/key.pem

# Ekspos port yang akan digunakan (80 dan 443)
EXPOSE 80 443

# Perintah untuk menjalankan xray dengan konfigurasi yang sudah disiapkan
CMD ["/usr/bin/xray", "-config", "/etc/xray/config.json"]