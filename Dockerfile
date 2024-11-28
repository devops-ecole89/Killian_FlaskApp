# Utiliser une image Python légère
FROM python:3.10-slim

# Installer les dépendances système nécessaires
RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    libssl-dev \
    libffi-dev \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

# Définir le répertoire de travail
WORKDIR /home/python/app

# Cloner le dépôt Git
RUN git clone -b dev https://github.com/devops-ecole89/Killian_DevOps.git

# Définir le répertoire de travail à l'intérieur du dépôt cloné
WORKDIR /home/python/app/Killian_DevOps

# Installer les dépendances Python
RUN pip install --no-cache-dir -r requirements.txt

# Définir la variable d'environnement PYTHONPATH pour inclure le répertoire du code
ENV PYTHONPATH=/home/python/app/Killian_DevOps

# Exposer le port (si nécessaire)
EXPOSE 5000

# Exécuter l'application
CMD ["python", "main.py"]