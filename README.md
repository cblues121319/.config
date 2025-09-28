

# ⚙️ macOS System Settings

<details>
    <summary style="font-size: 2em;"><i>{...}</i></summary>

## Display Settings
Configure display for optimal development work:

1. **Scale and Night Shift**
   - Go to `System Settings > Displays`
   - Choose "More Space" scaling option
   - Enable Night Shift for eye comfort

2. **Power Management** (for external displays)
   - Navigate to `Advanced` settings
   - Enable "Prevent automatic sleeping on power adapter when display is off"

## Trackpad and Accessibility

### Three Finger Drag
1. Go to `System Settings > Accessibility > Pointer Control`
2. Select `Trackpad Options`
3. Enable "Enable dragging" and choose "Three finger drag"

### Motion Settings
- Go to `System Settings > Accessibility > Display`
- Enable "Reduce motion" for better performance

## Application Management

### Keep Essential Apps Only
Recommended core applications:
- **Finder** - Configure with path bar and status bar visible
- **Safari** - For web browsing
- **System Settings** - For system configuration

### Finder Configuration
1. Open Finder
2. Go to `View` menu
3. Enable "Show Path Bar" and "Show Status Bar"
4. Tip: Ctrl+click the path bar icon to copy the current path

## Desktop & Dock

### Dock Settings
1. Go to `System Settings > Desktop & Dock`
2. Configure the following:
   - Enable "Automatically hide and show the Dock"
   - Adjust Dock size and magnification to preference
   - Position dock on left or right (not bottom for more screen space)

### Hot Corners
- Set up screen saver activation in bottom corner
- Configure Mission Control in bottom corner

### Mission Control
- Enable "Displays have separate spaces" for multi-monitor setups
- Disable "Automatically rearrange Spaces based on most recent use"

## Control Center

### Accessibility Shortcuts
- Show in Control Center, not in menu bar
- Test functionality after setup

### Spotlight
- Remove Spotlight from menu bar (keep keyboard shortcut)

## Appearance

### Color Scheme
1. Go to `System Settings > Appearance`
2. Set highlight color and accent color (recommended: purple)
3. Set appearance to "Auto" for automatic dark/light mode switching

## Keyboard Configuration

### Key Repeat Settings
1. Go to `System Settings > Keyboard`
2. **Critical for smooth vim navigation:**
   - Set "Key repeat rate" to fastest setting
   - Set "Delay until repeat" to shortest setting

### Input Sources
1. Add input methods as needed (e.g., Pinyin for Chinese)
2. **Important:** Do NOT check "Use the CAPS LOCK key to switch to and from U.S."

### Optional: Unicode Hex Input
Add Unicode Hex Input for special characters:
- ∀ (for all): Option + 2200
- ∃ (exists): Option + 2203
- ¬ (not): Option + 00ac
- ∧ (and): Option + 2227

### Function Key Behavior
- Set fn key to "Do Nothing" for more control

## Keyboard Shortcuts

### Essential macOS Shortcuts
```
General Navigation:
• Increase Indent (in IDEs): Cmd + ]
• Decrease Indent (in IDEs): Cmd + [
• Move cursor one word forward: Option + Right Arrow
• Move cursor one word backward: Option + Left Arrow
• Find file path: Cmd + Shift + G (in Finder)
```

### Mission Control (for trackpad-free navigation)
```
• Mission Control: Ctrl + Shift + W
• Show Launchpad: Ctrl + Shift + X
• Show Notification Center: Ctrl + Right
• Application Windows: Ctrl + Down
• Show Desktop: Ctrl + Shift + S
• Move left a space: Ctrl + Shift + A
• Move right a space: Ctrl + Shift + D
```

### Launchpad
```
• Toggle Dock hiding: Option + Cmd + D
```

### Spotlight (recommended: disable both for custom alternatives)
- Uncheck both Spotlight shortcuts to use alternatives like Alfred

### Application-Specific Shortcuts
Configure shortcuts for specific applications:

**Global Shortcuts:**
```
• Open Location: Ctrl + L
• New Window: Cmd + Shift + N
• Tile Window to Left: Ctrl + `
• Print: Ctrl + Cmd + P
• Open File: Shift + Cmd + O
• Minimize: Ctrl + Cmd + Option + M
```

**Alacritty (Terminal):**
```
• Hide Alacritty: Shift + Cmd + Alt + H
```

**Safari:**
```
• Toggle Favorites Bar: Ctrl + F
```

**Chrome:**
```
• Toggle Bookmarks Bar: Ctrl + F
• Reopen Closed Tab: Cmd + Ctrl + Z
```

## Safari Configuration

### Privacy and Tabs
1. Go to `Safari > Preferences`
2. **Privacy tab:**
   - Uncheck website tracking (to enable necessary cookies)
3. **Tabs:**
   - Set to "Compact" view

### Extensions
- Install "PocketTube: YouTube Subscription Manager" from App Store

## Built-in Apps Optimization

### Notes App
1. Open Notes app
2. Go to `Notes > Settings`
3. Adjust font size for better readability

### Reminders App
- Configure for task management and productivity

### Weather Widget
- Set temperature to Celsius
- Add multiple regions as needed

## Third-Party Enhancements

### Alfred (Spotlight Replacement)
Download and install [Alfred](https://www.alfredapp.com) for enhanced productivity and search capabilities.

</details>


# ☁️ Development Environment Setup

<details>
    <summary style="font-size: 2em;"><i>{...}</i></summary>

## Directory Structure

### Zen Tree Organization
Set up a clean directory structure for development:

```
Users/
  └── your_username/
      ├── xxx/                    # Main development directory
      │   ├── yyy/               # Projects directory
      │   │   ├── Cok/
      │   │   ├── Projects/
      │   │   └── zzz/
      │   ├── blackhole/
      │   ├── society/
      │   └── toKnow/
      └── .config/               # Configuration files
          ├── nvim/
          ├── tmux/
          ├── zsh/
          └── etc/
```

**Setup Commands:**
```bash
cd ~
git clone "https://github.com/your_username/env.git"
mv env .config
mkdir "xxx"
cd "xxx"
mkdir blackhole society toKnow
mkdir "yyy"
cd "yyy"
mkdir Cok Projects zzz
```

## Core Development Tools

### Xcode Command Line Tools
Essential for macOS development:
```bash
xcode-select --install
```

### Homebrew Package Manager
Primary package manager for macOS development tools.

**Installation:**
```bash
# Standard installation
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add to shell profile
echo '# homebrew' >> $HOME/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

**Proxy Configuration (if needed):**
```bash
echo 'export ALL_PROXY=socks5://127.0.0.1:your_port' > ~/.brew_proxy
echo 'source ~/.brew_proxy' >> ~/.zprofile
source ~/.zprofile
```

**Basic Commands:**
```bash
brew install package_name
brew uninstall package_name
brew search package_name
brew update && brew upgrade
```

## Terminal Environment

### Alacritty Terminal Emulator
Modern, GPU-accelerated terminal emulator:
```bash
brew install --cask alacritty
```

Configuration file: `~/.config/alacritty/alacritty.toml`

### Karabiner Elements (Key Mapping)
Virtual keyboard for custom key mappings:
```bash
brew install karabiner-elements --cask
```

**Essential Configuration:**
1. Open Karabiner Elements and grant accessibility permissions
2. Map Caps Lock to Left Control
3. Add Vi-style arrow keys (Cmd + HJKL)
4. Import rules from [Karabiner Complex Modifications](https://ke-complex-modifications.pqrs.org/)

**Custom Rules Location:**
```
~/.config/karabiner/assets/complex_modifications/
```

### Nerd Fonts
Fonts with programming ligatures and icons:

**Option 1: Download Patched Fonts**
1. Visit [Nerd Fonts GitHub](https://github.com/ryanoasis/nerd-fonts)
2. Download preferred fonts (recommended: Monofur, CodeNewRoman, SourceCodePro)
3. Install .otf/.ttf files by double-clicking

**Option 2: Patch Your Own Fonts**
```bash
brew install fontforge
# Download font-patcher script from Nerd Fonts repo
fontforge -script font-patcher "/path/to/font.ttf"
```

## Version Control

### Git Configuration
```bash
brew install git
echo 'export PATH="/opt/homebrew/bin:${PATH}"' >> $HOME/.config/zsh/zsh-exports

# Global configuration
git config --global user.name "your_github_username"
git config --global user.email "your_email@example.com"
git config --global credential.helper store
```

**Proxy Configuration (if needed):**
```bash
git config --global http.proxy http://127.0.0.1:port
git config --global --unset http.proxy  # to disable
```

## Essential Development Dependencies

### C++ Compiler
```bash
brew install gcc
```

### Node.js and npm
Download from [official website](https://nodejs.org) or:
```bash
brew install node
```

**npm Proxy Configuration:**
```bash
# Temporary proxy
npm --proxy http://127.0.0.1:port install package

# Persistent proxy
npm config set proxy http://127.0.0.1:port
npm config set https-proxy http://127.0.0.1:port
```

### MongoDB
**Server Installation:**
```bash
brew tap mongodb/brew
brew install mongodb-community

# Start/stop service
brew services start mongodb-community@7.0
brew services stop mongodb-community@7.0
```

**MongoDB Compass:** Download from [MongoDB website](https://www.mongodb.com/try/download/compass)

### Additional Utilities
```bash
# Text search tool
brew install ripgrep

# Directory tree visualization
brew install tree

# Video/audio processing
brew install ffmpeg

# Audio player
brew install sox

# YouTube video downloader
brew install yt-dlp
```

## Shell Configuration

### Zsh Setup
```bash
brew install zsh
```

**Configure XDG Base Directories in `.zprofile`:**
```bash
# XDG Base Directory Specification
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

# Zsh configuration directory
export ZDOTDIR=$HOME/.config/zsh

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
```

**Zsh Directory Structure:**
```
~/.config/zsh/
├── .zshrc
├── zsh-exports
├── zsh-aliases
└── zsh-functions
```

### Powerlevel10k Theme
```bash
brew install powerlevel10k
echo "source '$(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme'" >> ~/.config/zsh/.zshrc
```

Run `p10k configure` to set up the theme.

## Terminal Multiplexer

### tmux
```bash
brew install tmux
```

**Plugin Manager Setup:**
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Configuration file: `~/.config/tmux/tmux.conf`

**Color Support Check:**
```bash
# Run inside tmux session
tmux info | grep -e RGB -e Tc
```

## Text Editor

### Neovim
```bash
brew install neovim

# Clean previous configuration
rm -rf ~/.local/share/nvim/
```

**Directory Structure:**
```
~/.config/nvim/
├── init.lua
├── lazy-lock.json
└── lua/
    ├── your_username/
    │   ├── core/
    │   │   ├── init.lua
    │   │   ├── keymaps.lua
    │   │   └── options.lua
    │   └── plugins/
    │       ├── lsp/
    │       ├── nvim-tree.lua
    │       └── dashboard.lua
    └── lazy.lua
```

**Essential Neovim Commands:**
- `:Lazy` - Plugin manager
- `:Mason` - LSP server manager
- `:TSInstall language` - Install syntax highlighting
- `:NvimTree` - File explorer (Ctrl+N)
- `<leader>ff` - Find files (Telescope)

## Python Development

### Miniconda
```bash
brew install miniforge
conda init "$(basename "${SHELL}")"
```

**Essential Commands:**
```bash
# Create environment
conda create -n myenv python=3.11

# Activate/deactivate
conda activate myenv
conda deactivate

# Export environment
conda env export > environment.yml

# Install from file
conda env create -f environment.yml
```

### PyTorch (Apple Silicon)
```bash
conda create -n pytorch python=3.11
conda activate pytorch
pip3 install torch torchvision torchaudio

# Connect to Jupyter
python -m ipykernel install --user --name pytorch --display-name "Python (PyTorch)"
```

**Test MPS Support:**
```python
import torch
print(torch.backends.mps.is_available())
print(torch.backends.mps.is_built())
```

### TensorFlow (Apple Silicon)
```bash
conda env create -f tensorflow-apple-metal.yml -n tensorflow
conda activate tensorflow
python -m ipykernel install --user --name tensorflow --display-name "Python (TensorFlow)"
```

## LaTeX Support

### VimTeX
```bash
# Install LaTeX distribution
brew install --cask mactex-no-gui
# or for minimal installation
brew install --cask basictex

# PDF viewer
brew install --cask skim
```

Add to Neovim configuration:
```lua
vim.g['vimtex_view_method'] = 'skim'
```

## Additional Programming Languages

### Java
Download JDK from [Oracle](https://www.oracle.com/java/technologies/downloads/)

```bash
javac File.java
java File
```

### C++ with SFML
```bash
brew install sfml

# Compile with SFML
g++ -Wall -std=c++20 main.cpp -I/opt/homebrew/include -L/opt/homebrew/lib -lsfml-graphics -lsfml-window -lsfml-system -o program
```

## SSH Configuration

### SSH Setup
```bash
# Generate key pair
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

# Configure SSH client
vim ~/.ssh/config
```

**Example SSH Config:**
```
Host server-name
    HostName ip.address.here
    User username
    IdentityFile ~/.ssh/key.pem
    Port 22

Host jump-host-connection
    HostName target.server.com
    User username
    ProxyJump jump-host
```

### File Transfer
**FileZilla Setup:**
1. Protocol: SFTP
2. Host: server IP
3. Logon Type: Key file
4. Browse to your .pem file

## Automation Scripts

Create custom scripts for repetitive tasks:

**Example: Git Push Script**
```bash
#!/bin/bash
# Save as 'gpush' in PATH
git add .
git commit -m "${1:-Auto commit}"
git push
```

## Customization

### LS Colors
```bash
echo '# Custom LS colors' >> ~/.config/zsh/.zshrc
echo 'export LSCOLORS=cxfxexdxbxegedabagacac' >> ~/.config/zsh/.zshrc
```

### Window Management
```bash
# Enable click-and-drag anywhere in windows
defaults write -g NSWindowShouldDragOnGesture -bool true
```

## Troubleshooting

### Common Issues
- **Tmux colors**: Ensure TERM environment variable is set correctly
- **Conda SSL**: Use `conda config --set ssl_verify false` if behind proxy
- **Git authentication**: Use personal access tokens instead of passwords
- **Node packages**: Clear npm cache if installations fail

</details>
