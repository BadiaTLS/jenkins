FROM jenkins/agent:alpine-jdk17

# Jalankan sebagai root untuk menginstal paket tambahan
USER root

# Install Python3, pip, dan py3-virtualenv
RUN apk add --no-cache python3 py3-pip py3-virtualenv

# Kembali ke user 'jenkins' untuk keamanan
USER jenkins

# Setel direktori kerja
WORKDIR /home/jenkins
