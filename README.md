## Dependencies

Install these programs before using the config files:

- i3
- picom
- kitty
- polybar
- flameshot
- neovim
- git
- curl
- a C/C++ build toolchain
- Node.js + npm
- tree-sitter CLI

### Ubuntu / Debian
```bash
sudo apt update
sudo apt install feh i3-wm picom kitty polybar flameshot neovim git curl build-essential nodejs npm
npm install -g tree-sitter-cli
```

### Arch Linux
```bash
sudo pacman -S i3-wm picom kitty polybar flameshot neovim git curl base-devel nodejs npm
npm install -g tree-sitter-cli
```

### Fedora
```bash
sudo dnf install i3 picom kitty polybar flameshot neovim git curl @development-tools nodejs npm
npm install -g tree-sitter-cli
```

### openSUSE
```bash
sudo zypper install i3 picom kitty polybar flameshot neovim git curl gcc gcc-c++ make nodejs npm
npm install -g tree-sitter-cli
```

## SSH Setup

After setting up the SSH private key, make sure its permissions are restricted:

```bash
chmod 600 ~/.ssh/id_ed25519
