FROM jenkins/agent:alpine-jdk17

# Jalankan sebagai root untuk menginstal paket tambahan
USER root

# Install Python3, pip, dan py3-virtualenv
RUN apk add --no-cache python3 py3-pip py3-virtualenv

# Buat dan aktifkan virtual environment
RUN python3 -m venv /home/jenkins/venv

# Setel kepemilikan direktori virtualenv agar milik user jenkins
RUN chown -R jenkins:jenkins /home/jenkins/venv

# Upgrade pip di dalam virtual environment dan install dependencies
RUN . /home/jenkins/venv/bin/activate && pip install --upgrade pip

# Kembali ke user 'jenkins' untuk keamanan
USER jenkins

# Setel direktori kerja
WORKDIR /home/jenkins
