

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
cd "yyy"
mkdir Cok Projects zzz
```

## Core Development Tools

### ➊ Xcode Command Line Tools
Essential for macOS development:
```bash
xcode-select --install
```

### ➋ Homebrew Package Manager
Primary package manager for macOS development tools.

**Standard Installation:**
```bash
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
brew install xxx
brew uninstall xxx
```

<details>
  <summary><i>Install Homebrew Using Mirror (collapsed)</i></summary>

For users having trouble accessing brew.sh (e.g., users in China):
```bash
cd /opt
sudo mkdir homebrew
sudo chown -R $(whoami):admin /opt/homebrew
git clone https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git /opt/homebrew
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
echo "export PATH=/opt/homebrew/bin:$PATH" >> ~/.zprofile
```
</details>

## Terminal Environment

### ➌ Alacritty Terminal Emulator
Modern, GPU-accelerated terminal emulator:

Configuration: `~/.config/alacritty/alacritty.toml`
```bash
brew install --cask alacritty
```

**Quick Setup:**
1. Open Finder (/)
2. Drag disk and user to the sidebar
3. Replace hide alacritty command "cmd+h" in keyboard shortcuts

### ➍ Karabiner Elements (Virtual Keyboard)
Essential for custom key mappings:
```bash
brew install karabiner-elements --cask
```

**Configuration Steps:**
1. Open Karabiner Elements and grant accessibility permissions
2. Target device: choose "for all devices"
3. Add item: map "caps_lock" to "left_control"
4. Import rules from [Karabiner Complex Modifications](https://ke-complex-modifications.pqrs.org/)
   - Search for "Vi style arrow"
   - Import and enable (only enable command + hjkl)

**Custom Rules Location:**
```bash
~/.config/karabiner/assets/complex_modifications/
```

### ➎ Nerd Fonts
Programming fonts with ligatures and icons:

**Recommended Fonts:**
- Monofur Nerd Font
- CodeNewRoman Nerd Font (Light version preferred)
- SourceCodePro Nerd Font

**Installation Steps:**
1. Visit [Nerd Fonts GitHub](https://github.com/ryanoasis/nerd-fonts)
2. Navigate to patched-fonts folder
3. Download Complete.otf files
4. Install by double-clicking
5. Install both regular and italic versions

**Patch Your Own Fonts:**
```bash
brew install fontforge
# Download font-patcher script from Nerd Fonts repo
fontforge -script font-patcher "/path/to/font.ttf"
```

## ➏ Essential Development Dependencies

### Git Version Control
```bash
brew install git
git --version

# Replace Apple's default git
echo 'export PATH="/opt/homebrew/bin:${PATH}"' >> $HOME/.config/zsh/zsh-exports
```

<details>
    <summary><i>Git Commands Reference (collapsed)</i></summary>

**Personal Access Tokens:** GitHub → Settings → Developer Settings → Tokens
**Gitignore Generator:** [toptal.com/developers/gitignore](https://www.toptal.com/developers/gitignore)

**Proxy Configuration:**
```bash
git config --global http.proxy http://127.0.0.1:port
git config --global --unset http.proxy  # to disable
```

**Initialize/Create Local Repo:**
```bash
cd "any_directory"
git init
git status
```

**Connect Local Repo with Remote:**
```bash
git config --global user.name "github_account_name"
git config --global user.email "email@example.com"
git config -l
git branch -M main
git remote add origin https://github.com/user_name/repo_name.git
git remote -v
git config --global credential.helper store
```

**Add, Commit, Check, Pull/Push:**
```bash
# Add files
git add filename.xxx
git add .

# Commit
git commit -m "commit message"
git status
git reset --soft HEAD~     # undo commit
git reset --hard HEAD~1    # undo commit and changes

# Check history
git log
git log -p
git show <hash>
git diff

# Pull/Push
git pull origin main
git push -u origin main
git push --force-with-lease origin <branch-name>
```

**Large File Support:**
```bash
brew install git-lfs
git lfs install
git lfs track "video/file.mp4"
git add .gitattributes
```

**Branch Management:**
```bash
# Create/switch branches
git checkout -b new_branch
git checkout main
git branch --list
git branch -a

# Merge branches
git checkout main
git merge feature-branch
git push origin main

# Delete branches
git branch -d branch_name
git push origin --delete branch_name
```
</details>

### C++ Compiler
```bash
brew install gcc
```

### MongoDB Database
**Server Installation:**
```bash
brew tap mongodb/brew
brew install mongodb-community

# Troubleshooting
brew update-reset
brew doctor
brew services list

# Start/stop service
brew services start mongodb-community@7.0
brew services stop mongodb-community@7.0
mongosh  # test connection
```

**MongoDB Compass:** Download from [MongoDB website](https://www.mongodb.com/try/download/compass) (ARM64 Platform)

### PostgreSQL Database
**Server Installation:**
```bash
# Install PostgreSQL server
brew install postgresql

# Start PostgreSQL service
brew services start postgresq

# Create a database
createdb mydatabase

# Connect to PostgreSQL console
psql postgres
psql mydatabase  # Connect to specific database
```

**pgAdmin (GUI Tool):**
```bash
# Install pgAdmin 4
brew install --cask pgadmin4

# Alternative: Download from https://www.pgadmin.org/download/pgadmin-4-macos/
```

**Database Console Commands:**
```sql
-- Connect to database
\c database_name

-- List all databases
\l

-- List all tables in current database
\dt

-- Describe table structure
\d table_name

-- List all users/roles
\du

-- Exit psql
\q

-- Execute SQL file
\i /path/to/file.sql

-- Show current database and user
SELECT current_database(), current_user;
```

**Essential SQL Commands:**
```sql
-- Create database
CREATE DATABASE myapp_dev;

-- Create user with password
CREATE USER developer WITH PASSWORD 'secure_password';

-- Grant privileges
GRANT ALL PRIVILEGES ON DATABASE myapp_dev TO developer;

-- Create table
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert data
INSERT INTO users (username, email) VALUES ('john_doe', 'john@example.com');

-- Query data
SELECT * FROM users;
SELECT username, email FROM users WHERE id = 1;

-- Update data
UPDATE users SET email = 'newemail@example.com' WHERE id = 1;

-- Delete data
DELETE FROM users WHERE id = 1;

-- Drop table
DROP TABLE users;

-- Drop database
DROP DATABASE myapp_dev;
```

**Connection Configuration:**
```bash
# Default PostgreSQL connection parameters
Host: localhost
Port: 5432
Database: postgres (default)
Username: your_system_username
Password: (usually empty for local development)

# Connection string format
postgresql://username:password@localhost:5432/database_name
```

**Common Development Tasks:**
```bash
# Backup database
pg_dump mydatabase > backup.sql

# Restore database
psql mydatabase < backup.sql

# Reset user password
psql postgres -c "ALTER USER developer PASSWORD 'new_password';"

# Check PostgreSQL status
brew services list | grep postgresql

# Stop PostgreSQL service
brew services stop postgresql@15

# Restart PostgreSQL service
brew services restart postgresql@15
```

**pgAdmin Setup:**
1. Open pgAdmin 4
2. Create new server connection:
   - Name: Local Development
   - Host: localhost
   - Port: 5432
   - Database: postgres
   - Username: your_system_username
3. Save connection for future use

### Node.js and npm
Download from [Node.js official website](https://nodejs.org) (LTS version recommended)
```bash
node --version
npm --version
```

**npm Proxy Configuration:**
```bash
# Temporary for single command
npm --proxy http://127.0.0.1:your_port install package

# Persistent configuration
npm config set proxy http://127.0.0.1:7890
npm config set https-proxy http://127.0.0.1:7890
npm config delete proxy     # to remove
npm config delete https-proxy

# .npmrc file
proxy=http://127.0.0.1:7890
https-proxy=http://127.0.0.1:7890
```

### Additional Utilities
```bash
# Text search tool
brew install ripgrep

# Directory tree visualization
brew install tree
```

### Media Processing Tools
**YouTube Video Download:**
```bash
brew install yt-dlp
brew install ffmpeg

# Basic download
yt-dlp "https://www.youtube.com/watch?v=VIDEO_ID" --merge-output-format mp4

# High quality download (up to 4K)
yt-dlp -f "bestvideo[height<=2160][ext=webm]+bestaudio[ext=m4a]/best[height<=2160]" --merge-output-format mp4 "URL"

# Convert video to MPEG-4
ffmpeg -i video1.mp4 -vcodec libx264 -acodec aac video2.mp4

# Merge separate video and audio files
ffmpeg -i "video.webm" -i "audio.m4a" -c:v copy -c:a copy "output.mp4"

# Convert video to audio
ffmpeg -i input.mkv -b:a 192K -vn output.mp3
```

**Audio Player:**
```bash
brew install sox
sox /path/to/file.wav -d
```

### Network Utilities
**Find IP Address:**
```bash
# Linux/Unix systems
ifconfig
ip addr
ifconfig | grep "inet "
```

**SSH Configuration:**
```bash
# Check if IP exists
nslookup ip-address

# Direct connection
ssh -i key.pem username@ip-address

# Set proper permissions for key files
chmod 600 ~/.ssh/key.pem

# SSH config file: ~/.ssh/config
Host lambda-server-1
    HostName xxx.x.xxx.xx
    User ubuntu
    IdentityFile ~/.ssh/key.pem

Host jump-host-connection
    HostName target.server.com
    User username
    ProxyJump jump-host
```

**FileZilla Setup:**
| Connection Type | Configuration |
|:----------------|:--------------|
| Normal | Host - Username - Password - Port |
| Jump Host | Settings > Generic Proxy > SOCKS 5<br>Proxy host: 127.0.0.1 - Port: 8001 |
| Private Key | Protocol: SFTP<br>Logon Type: Key File<br>Browse to .pem file |

## ➐ Terminal Configuration

### tmux (Terminal Multiplexer)
```bash
brew install tmux

# Install plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Check color support (run inside tmux)
tmux info | grep -e RGB -e Tc
```

Configuration file: `~/.config/tmux/tmux.conf`

**Plugin Installation:**
1. Start tmux
2. Press `prefix + I` to install plugins

### zsh Shell Configuration
```bash
brew install zsh
```

**Add to `.zprofile`:**
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

**Setup zsh Directory:**
```bash
cd ~/.config
mkdir zsh
touch .zshrc
```

**Powerlevel10k Theme:**
```bash
brew install powerlevel10k
echo "source '$(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme'" >> ~/.config/zsh/.zshrc
```

Download zsh configuration from your GitHub repository or configure manually.

### Neovim Text Editor
**Installation:**
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

**Essential Commands:**
| Command | Description |
|:--------|:------------|
| `/` | Search (n: next, N: previous) |
| `:e "path/to/file"` | Open file to buffer |
| `<leader> + b` | New empty buffer |
| `:Lazy` | Plugin manager UI |
| `:Lazy reload "plugin.nvim"` | Reload specific plugin |
| `:Lazy sync` | Download all new plugins |
| `:NvimTree` | File explorer (Ctrl+N) |
| `<leader>ff` | Find files (Telescope) |
| `<leader>fb` | Find buffers (Telescope) |
| `:ColorizerToggle` | Toggle color preview |
| `:TSInstall python` | Install syntax highlighting |
| `:Mason` | LSP server manager |
| `:MasonInstall <name>` | Install LSP server |

### Custom Scripts
Automate repetitive operations:

**Example Git Push Script:**
&#x23f5; *automate operation that are repetitive for your convenience, refer to my [`scripts`](./myScript/README.md)*
```bash
#!/bin/bash
# Save as 'gpush' in PATH
git add .
git commit -m "${1:-Auto commit}"
git push
```

## Python Development Environment

### Conda Package Manager
```bash
brew install miniforge
conda init "$(basename "${SHELL}")"
```

**Essential Commands:**
```bash
# Proxy workaround
unset HTTP_PROXY HTTPS_PROXY http_proxy https_proxy ALL_PROXY NO_PROXY

# SSL issues behind proxy
conda config --set ssl_verify false
pip install 'httpx[socks]'

# Environment management
conda create -n myenv python=3.11
conda create -n myenv scipy
conda remove --name myenv --all
conda activate myenv
conda deactivate

# Package management
conda install -y jupyter
conda env export > environment.yml
pip freeze > requirements.txt
pip install -r requirements.txt

# Update environment from yml
conda env update --name myenv --file environment.yml --prune
```

**Important Notes for .yml files:**
1. Comment out "name:" section to avoid creating new environments
2. Newer versions may override older ones
3. Install newer versions after older for compatibility

### PyTorch Setup
```bash
conda create -n pytorch python=3.11
conda activate pytorch
pip3 install torch torchvision torchaudio

# Connect to Jupyter
python -m ipykernel install --user --name pytorch --display-name "Python (PyTorch)"
jupyter notebook
```

**Example PyTorch Environment (torch-conda.yml):**
```yaml
name: pytorch-env
channels:
  - pytorch
  - conda-forge
dependencies:
  - python=3.11
  - pip>=19.0
  - pytorch
  - torchvision
  - torchaudio
  - jupyter
  - scikit-learn
  - scipy
  - pandas
  - matplotlib
  - pillow
  - tqdm
  - requests
  - h5py
  - pyyaml
  - flask
  - boto3
  - ipykernel
  - pip:
    - bayesian-optimization
    - gym
    - kaggle
```

**MPS (Apple Metal) Support:**
```python
import torch
import math

# Check MPS availability
print(torch.backends.mps.is_available())
print(torch.backends.mps.is_built())

# Device selection
has_mps = getattr(torch, 'has_mps', False)
device = "mps" if getattr(torch, 'has_mps', False) else "gpu" if torch.cuda.is_available() else "cpu"
```

**Jupyter Kernel Management:**
```bash
# List kernels
jupyter kernelspec list
# Remove kernel
jupyter kernelspec uninstall kernel_name
```

### TensorFlow Setup
```bash
cd ~/anywhere-yml-for-installation

# Base environment setup
conda install -y jupyter
conda deactivate
conda env create -f tensorflow-apple-metal.yml -n tensorflow
conda activate tensorflow
python -m ipykernel install --user --name tensorflow --display-name "Python (TensorFlow)"
jupyter notebook

# Verify GPU support
import tensorflow as tf
tf.config.list_physical_devices('GPU')
```

## Additional Programming Languages

### Aerospace Tiling Window Manager
Advanced window management for macOS:
- [Tutorial Link](https://www.youtube.com/watch?v=-FoWClVHG5g)
- [Latent Space Visualization](https://www.youtube.com/watch?v=o_cAOa5fMhE)

### C++ Development
**Compilation:**
```bash
# Full compilation command
g++ -Wall -std=c++20 program.cpp -o executable && ./executable

# Components:
# g++: compiler
# -Wall: warnings
# -std=c++20: C++ version
# program.cpp: source file
# -o executable: output name
# ./executable: run compiled program
```

**Check GLIBCXX Version:**
```bash
# Method 1: Specific file
strings /usr/lib64/libstdc++.so.6 | grep GLIBCXX

# Method 2: Global check
strings $(g++ -print-file-name=libstdc++.so) | grep GLIBCXX

# Method 3: Program-specific
ldd my_program | grep libstdc++
```

**SFML Library:**
```bash
brew install sfml
brew info sfml

# Compilation with SFML
g++ test.cpp -Wall -I/opt/homebrew/include -o run -L/opt/homebrew/lib -lsfml-graphics -lsfml-window -lsfml-system
```

### Java Development
**Installation:**
1. Download JDK from [Oracle](https://www.oracle.com/java/technologies/downloads/)
2. Or download Java SE Development Kit
3. Restart terminal

**Usage:**
```bash
javac File.java
java File
```

### LaTeX with VimTeX
**Installation:**
```bash
# LaTeX distribution (choose one)
brew install --cask mactex-no-gui
# OR minimal installation
brew install --cask basictex

# PDF viewer
brew install --cask skim
```

**Verification:**
```bash
latexmk
pdflatex
```

**Neovim Configuration:**
Add to VimTeX plugin configuration:
```lua
vim.g['vimtex_view_method'] = 'skim'
```

**Commands:**
```bash
# Generate PDF from command line
pdflatex document.tex

# Inside Neovim
:VimtexCompile  # Compile (mapped to <leader>r)
:echo g:vimtex_view_enabled  # Check if enabled
```

**VimTeX Key Mappings:**
- `dse`: Delete surrounding environments (\begin{} and \end{})
- `cse`: Change surrounding environments

## ➑ Customization and Fun Stuff

### Terminal Customization
**LS Colors:**
```bash
echo '\n# customize LS-colors (directory) https://geoff.greer.fm/lscolors/' >> ~/.config/zsh/.zshrc
echo '# green & unbold' >> ~/.config/zsh/.zshrc
echo 'export LSCOLORS=cxfxexdxbxegedabagacac' >> ~/.config/zsh/.zshrc
```

### OpenSSL
```bash
brew install openssl

# Usually openssl@3, follow terminal output for path setup
echo 'export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"' >> ~/.config/zsh/.zshrc
echo 'export LDFLAGS="-L/opt/homebrew/opt/openssl@3/lib"' >> ~/.config/zsh/.zshrc
echo 'export CPPFLAGS="-I/opt/homebrew/opt/openssl@3/include"' >> ~/.config/zsh/.zshrc
```

### macOS Enhancements
**Click and Drag Anywhere in Windows:**
```bash
# Enable
defaults write -g NSWindowShouldDragOnGesture -bool true
# Disable
defaults delete -g NSWindowShouldDragOnGesture
```

### Fun Applications
```bash
brew install numi --cask
brew install keycastr --cask
brew install cmatrix
sudo npm install -g mapscii      # Requires Node.js
brew install cointop
brew install bpytop
brew tap teamookla/speedtest
brew update
brew install speedtest --force
```

<details>
    <summary><i>Ubuntu Keymap Configuration (collapsed)</i></summary>

**GNOME Desktop:**
```bash
sudo apt install gnome-tweak
```

**Tweak Tool Configuration:**
1. **Startup Applications:** Caffeine indicator
2. **Top Bar:** Weekday, Date
3. **Keyboard & Mouse:**
   - Show Extended Input Sources
   - Mouse: Pointer Location, Middle Click Paste
   - Touchpad: Disable While Typing
   - Mouse Click Emulation: Fingers
   - Additional Layout Options:
     - Caps Lock Behavior: Caps Lock as Ctrl
     - Alt and Win behavior: Meta mapped to Win
   - Enable Emacs input for cursor movement

**Keyboard Shortcuts:**
- **Accessibility:** Disable Zoom in/out
- **Launchers:** 
  - Home folder: Alt+Super+H
  - Launch terminal: Alt+Super+T
  - Launch web browser: Alt+Super+B
  - Settings: Alt+Super+S
- **System:**
  - Show overview: Super + Space
  - Lock Screen: Alt + L
  - Show all applications: Alt + A

**Alacritty Key Bindings:**
```yaml
key_bindings:
  # Copy/Paste with Super key
  - { key: C, mods: Super, action: Copy }
  - { key: V, mods: Super, action: Paste }
  
  # Tmux bindings with Super key
  - { key: M, mods: Super, chars: "\x01\x4d" }  # Split pane
  - { key: B, mods: Super, chars: "\x01\x42" }  # Split horizontal
  - { key: S, mods: Super, chars: "\x1b\x3a\x77\x0a" }  # Save in Neovim
  - { key: T, mods: Super, chars: "\x01\x63" }  # New tmux window
  - { key: D, mods: Super, chars: "\x01\x64" }  # Detach session
```
</details>

</details>




