# Takashi Development Environment

A comprehensive development environment setup for Ubuntu 24.04 and macOS, providing a curated collection of tools and applications for modern software development.

## Quick Start

### Ubuntu 24.04
```bash
bash <(wget -qO- ubuntu.gtkatakura.com)
```

### macOS
```bash
bash <(curl -fsSL mac.gtkatakura.com)
```

## What's Included

### 🌐 Web Browsers
- **Brave Browser** - Privacy-focused browser with built-in ad blocking and crypto wallet
- **Google Chrome** (macOS) - Popular web browser by Google
- **Firefox** (macOS) - Open-source browser by Mozilla

### 💻 Code Editors & IDEs
- **Cursor** - AI-powered code editor built on VS Code
- **Visual Studio Code** (macOS) - Popular code editor by Microsoft
- **Vim** - Command-line text editor
- **Android Studio** - Official IDE for Android development
- **JetBrains Toolbox** - Application launcher for JetBrains IDEs

### ⚡ Terminal Tools & Utilities
- **AWS CLI** - Command line interface for Amazon Web Services
- **GitHub CLI (gh)** - Command line tool for GitHub
- **jq** - Command-line JSON processor
- **Heroku CLI** - Command line interface for Heroku platform
- **grpcurl** - Tool for interacting with gRPC servers
- **mkcert** - Create locally-trusted development certificates
- **Comby** - Structural code search and replace tool
- **Watchman** - File watching service by Facebook
- **eza** (macOS) - Modern replacement for ls
- **zoxide** (macOS) - Smart cd command that learns your habits
- **mise** (macOS) - Runtime version manager
- **gnupg** (macOS) - GNU Privacy Guard
- **lazygit** (macOS) - Terminal UI for git commands
- **lazydocker** (macOS) - Terminal UI for docker commands

### 🎨 Charm.sh CLI Tools
- **crush** - Create code screenshots
- **freeze** - Generate images of code and terminal output
- **mods** - AI for the command line
- **sequin** - Generate sequences
- **vhs** - Generate terminal recordings

### 🗄️ Database Tools
- **DBeaver Community** - Universal database tool and SQL client

### 💬 Communication & Collaboration
- **Discord** - Voice and text communication platform
- **Slack** - Team communication and collaboration platform
- **Zoom** (macOS) - Video conferencing software

### 📝 Productivity & Note-taking
- **Raycast** (macOS) - Productivity tool and launcher
- **SuperWhisper** (macOS) - Voice-to-text transcription tool
- **Obsidian** (macOS) - Knowledge base and note-taking app
- **Notion** (macOS) - All-in-one workspace for notes and collaboration
- **Figma** (macOS) - Collaborative design tool
- **Spotify** (macOS) - Music streaming service

### 🔧 Development & API Tools
- **Postman** - API development and testing platform
- **Reactotron** - Desktop app for inspecting React JS and React Native projects
- **Charles Proxy** - Web debugging proxy application

### 🐳 Containerization & Virtualization
- **Docker** - Container platform
- **Docker Compose** - Multi-container Docker applications
- **OrbStack** (macOS) - Fast container and Linux VM runner for macOS
- **VirtualBox** - Virtualization software
- **QuickEmu** - Quickly create and run virtual machines
- **QEMU-KVM** - Virtualization tools for Android emulation

### 📱 Mobile Development
- **Android Platform Tools** (macOS) - ADB and other Android development tools
- **Vysor** - View and control Android devices
- **Expo Orbit** (macOS) - Launch builds and manage simulators

### 🎵 Entertainment & Media
- **LM Studio** - Desktop app for running local language models

### 🔐 Security & VPN
- **AWS VPN Client** - Client for AWS Client VPN endpoints
- **1Password CLI** (macOS) - Command line interface for 1Password

### 🖥️ System Tools & Audio
- **PulseAudio Volume Control** - Audio volume control
- **Alacritty** - GPU-accelerated terminal emulator

### 📦 Package Managers
- **Homebrew** - Package manager (macOS natively, Linux via Linuxbrew)
- **Flatpak** - Application distribution framework
- **Snap** - Package management system

### 🎛️ GNOME Extensions (Ubuntu)
- **Ubuntu App Indicators** - System tray support
- **Tactile** - Window tiling extension
- **TopHat** - System monitor extension
- **OpenWeather Extension** - Weather information display

### ⚙️ System Configuration
- **Git aliases** - Predefined shortcuts for common git commands
- **Keyboard layouts** - US and US International with Alt+Space switching
- **GNOME settings** - Window management and workspace configuration
- **Rosetta 2** (macOS) - Translation layer for x86 apps on Apple Silicon

## Manual Setup

After installation, complete the setup with tasks in [MANUAL_SETUP.md](MANUAL_SETUP.md):

1. **Brave Sync** - Sync browser settings and bookmarks
2. **VSCode Settings Sync** - Sync editor preferences and extensions
3. **1Password for Git** - Set up SSH key management ([Tutorial](https://developer.1password.com/docs/ssh/manage-keys/))
4. **Git Credentials** - Authenticate with GitHub (`gh auth login`)
5. **File Watcher Limits** - Increase system file watcher limits for development

## Platform Differences

### macOS Features
- More comprehensive Homebrew-based installations
- Enhanced productivity tools (Raycast, SuperWhisper)
- Full office and creative suite support
- Advanced terminal tools (eza, zoxide, lazygit, lazydocker)

### Ubuntu Features
- GNOME-specific configurations and extensions
- Flatpak and Snap package support
- KVM virtualization setup
- Desktop environment customizations
- AppImage support configuration

## Project Structure

```
takashi/
├── macbook/          # macOS-specific setup
├── ubuntu-24_04/     # Ubuntu 24.04-specific setup
├── shared/           # Cross-platform configurations
└── cheat-sheets/     # Reference documentation
```

The project provides a complete development environment setup optimized for web development, mobile development (React Native/Android), and modern DevOps workflows.
