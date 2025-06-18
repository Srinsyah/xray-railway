# Gunakan image Xray resmi dari Docker Hub
FROM teddysun/xray:latest

# Salin konfigurasi dan sertifikat ke dalam container
COPY config.json /etc/xray/config.json
COPY cert.pem /etc/xray/cert.pem
COPY key.pem /etc/xray/key.pem

# Ekspos port yang akan digunakan (80 dan 443)
EXPOSE 80 443

# Jalankan Xray dengan konfigurasi yang sudah disiapkan
CMD ["/usr/bin/xray", "-config", "/etc/xray/config.json"]