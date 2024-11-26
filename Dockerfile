# Utiliser une image Python légère
FROM python:3.10-slim

# Définir le répertoire de travail
WORKDIR /home/python/app

# Copier le fichier requirements.txt et installer les dépendances
COPY requirements.txt /home/python/app/
RUN pip install --no-cache-dir -r requirements.txt

# Copier le code de l'application dans le conteneur
COPY . /home/python/app/

# Exposer le port Flask par défaut
EXPOSE 5000

# Commande pour exécuter l'application Flask
CMD ["python", "main.py"]
