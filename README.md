# wiki in Docker

Build with Podman:

```
podman build -t federatedwiki/base .
```

Build with Docker Compose running on a rootless Podman context:

```
mkdir .wiki
sudo chown 100999:100999 .wiki
docker compose build
docker compose up
```
