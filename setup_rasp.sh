cd

### Instalar docker

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

### Iniciar serviço de transcrição

git clone https://github.com/projetoRepositor/backend-api-transcricao.git

cd backend-api-transcricao/backend-api-transcricao

sudo docker compose up --build -d

### Iniciar Daemons

git clone https://github.com/projetorepositor/firmware.git

cd firmware

sudo bash setup_main_config.sh

sudo bash setup_wifi_service.sh

cd ..


