# Utiliser une image Python légère
FROM python:3.10-slim

# install git
RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    libssl-dev \
    libffi-dev

# Définir le répertoire de travail
WORKDIR /home/python/app

# Copier le code de l'application dans le conteneur
RUN git clone https://github.com/devops-ecole89/Killian_DevOps.git /home/python/app/Killian_DevOps
WORKDIR /home/python/app/Killian_DevOps

RUN git checkout dev

# Copier le fichier requirements.txt et installer les dépendances
RUN pip install flask pytest
#RUN pip install  -r requirements.txt

# Exposer le port Flask par défaut
EXPOSE 5000

# Commande pour exécuter l'application Flask
CMD ["python", "main.py"]
