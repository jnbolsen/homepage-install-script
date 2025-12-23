# Homepage install and update script
This script installs [Homepage](https://gethomepage.dev/installation/) from source, or updates from source if it is already installed and a newer version is available.

> [!NOTE]
> The script installs dependencies and builds using pnpm [as recommended](https://gethomepage.dev/installation/source/). The latest verison is installed globally using npm.

## Requirements
The following packages are installed:
- node.js
- npm
- curl

```bash
sudo apt install curl node.js npm
```

## Usage
Download `install.sh`.

```bash
wget -O install.sh https://raw.githubusercontent.com/jnbolsen/homepage-scripts/refs/heads/main/install.sh
```

Make the scrip executable.

```bash
sudo chmod +x install.sh
```

Run the script.

```bash
sudo ./install.sh
```

## Directories
- Installation directory: `/opt/homepage`
- Configuration directory: `/opt/homepage/config`

## Tested environments
Ubuntu 22.04, 24.04, and 25.10 <br />
Debian 12 and 13

## Reference
Some ideas for this script came from the LXC Homepage scripts from [PVE community-scripts](https://community-scripts.github.io/ProxmoxVE/scripts?id=homepage), but tailored for my personal use and used within the server instead of PVE.

## License

[MIT](https://github.com/jnbolsen/homepage-scripts/blob/main/LICENSE.md)
