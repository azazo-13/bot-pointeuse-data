# --- IMAGE PYTHON OFFICIELLE ---
FROM python:3.11-slim

# --- VARIABLES D'ENVIRONNEMENT ---
ENV PYTHONUNBUFFERED=1

# --- DOSSIER DE TRAVAIL ---
WORKDIR /app

# --- COPIE DES FICHIERS ---
COPY . .

# --- INSTALLATION DES DEPENDANCES ---
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# --- DONNER LES DROITS AU SCRIPT ---
RUN chmod +x start.sh

# --- LANCEMENT DU BOT ---
CMD ["./start.sh"]
