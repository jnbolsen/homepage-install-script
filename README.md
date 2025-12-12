# Homepage Install and Update Scripts
These are scripts to easily install and update [Homepage](https://gethomepage.dev/installation/) from source.

Right now these are set to be verbose but can be changed by removing `-x` at the top of each script.

## Requirements
The following packages are installed:
- node.js
- npm
- pnpm
- curl

```bash
sudo apt install curl node.js npm
```

```bash
sudo npm install -g pnpm
```

## Usage - Install Homepage
Download `install.sh`.

```bash
wget -O install.sh https://github.com/jnbolsen/homepage-scripts/blob/main/install.sh
```

Make the scrip executable.

```bash
sudo chmod +x install.sh
```

Run the script.

```bash
sudo ./install.sh
```

## Usage - Update Homepage
Download `update.sh`.

```bash
wget -O update.sh https://github.com/jnbolsen/homepage-scripts/blob/main/update.sh
```

Make the scrip executable.

```bash
sudo chmod +x update.sh
```

Run the script.

```bash
sudo ./update.sh
```

## Configuration Directory Location

`/opt/homepage/config/`

## Tested Environments
Ubuntu 22.04, 24.04, and 25.10 <br />
Debian 12 and 13

## Reference
These scripts are similar to the LXC Homepage scripts from [Proxmox VE Helper-Scripts](https://community-scripts.github.io/ProxmoxVE/scripts?id=homepage), but tailored for my personal use and used within the server instead of Proxmox.

## License

[MIT](https://github.com/jnbolsen/homepage-scripts/blob/main/LICENSE.md)
