# Node devcontainer

A basic Archlinux-based devcontainer for nodejs development.

## Installed packages:

1. Neovim
2. OpennSSH
3. Tmux
4. Git
5. npm
6. Less
7. Stow
8. Nodejs (lts hydrogen)

## Usage:

1. Clone the repo:

```bash
git clone git@github.com:narayanan-gokul/devcontainer-node.git
```

2. Navigate to the repo directory:

```bash
cd devcontainer-node
```

3. Copy all required config files into the `config` folder. This folder be used
as the base directory in which `stow` will be run.

4. Clone/copy the nodejs project into the `app` directory.

5. Build and start the container using docker-compose:

```bash
docker-compose up -d devcontainer
```

6. Execute commands from the container interactively:

```bash
docker exec -it <container-name> bash
```
