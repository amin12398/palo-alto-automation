FROM python:3.10-slim


RUN apt-get update && apt-get install -y \
    sshpass \
    git \
    curl \
    && pip install --no-cache-dir ansible \
    && pip install --no-cache-dir pan-os-python  # Installer pan-os-python pour interagir avec Palo Alto


COPY requirements.yml .
RUN ansible-galaxy collection install -r requirements.yml


WORKDIR /app
COPY ikegateway.yml .
COPY hosts.yml .


CMD ["ansible-playbook", "-i", "hosts.yml", "ikegateway.yml"]
