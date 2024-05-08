# Usa una immagine di Python ufficiale come base
FROM python:3.9-slim

# Imposta il work directory nell'app
WORKDIR /app

# Copia tutti i file presenti nella directory corrente 
COPY . .

# Installa le dipendenze Python
RUN pip install --no-cache-dir -r requirements.txt

# Espone la porta 5555 su cui gira l'applicazione Flask
EXPOSE 5555

# Avvia l'applicazione Flask quando l'immagine del container viene avviata
CMD ["python", "app.py"]
