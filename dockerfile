# Usa una immagine di Python ufficiale come base
FROM python:3.9-slim

# Imposta il work directory nell'app
WORKDIR /app

# Copia il file requirements.txt nell'immagine
COPY requirements.txt .

# Installa le dipendenze Python
RUN pip install --no-cache-dir -r requirements.txt

# Copia tutti i file presenti nella directory corrente (compreso il file app.py e il template) nell'immagine
COPY . .

# Espone la porta 5555 su cui gira l'applicazione Flask
EXPOSE 5555

# Avvia l'applicazione Flask quando l'immagine del container viene avviata
CMD ["python", "app.py"]
