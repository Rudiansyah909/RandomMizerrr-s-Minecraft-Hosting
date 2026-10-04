curl -fsSL https://get.docker.com -o get-docker.sh

sudo sh get-docker.sh

git clone --recurse-submodules https://github.com/Pumpkin-MC/Pumpkin.git

cd Pumpkin

echo "Running Pumpkin..."

sleep 1

docker run --rm \
    -p 25565:25565  \
    -v /path/to/data:/pumpkin \
    -it ghcr.io/pumpkin-mc/pumpkin:master
