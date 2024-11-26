# Utiliser une image Python légère
FROM python:3.10-slim

# install git
RUN apt-get update && apt-get install -y git && apt-get clean && rm -rf /var/lib/apt/lists/*

# Définir le répertoire de travail
WORKDIR /home/python/app

# Copier le code de l'application dans le conteneur
RUN git clone https://github.com/devops-ecole89/Killian_DevOps.git /home/python/app/
RUN git checkout dev

# Copier le fichier requirements.txt et installer les dépendances
COPY requirements.txt /home/python/app/
RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "test.py"]

# Exposer le port Flask par défaut
EXPOSE 5000

# Commande pour exécuter l'application Flask
CMD ["python", "main.py"]
