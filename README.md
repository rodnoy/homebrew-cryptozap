# CryptoZap CLI

🛡 Secure and simple command-line encryption/decryption tool for macOS.

## Features

- 🔒 Encrypt files or folders
- 🔓 Decrypt `.encrypted` files
- 💬 Localized CLI (EN, FR, RU)
- 🧠 Autocompletion for zsh, bash, fish
- 📖 Integrated man page
- 🛠 Built in Swift + CryptoKit

## 🔐 Encryption Standard

CryptoZap uses AES-GCM encryption with a symmetric key derived using HKDF and SHA-256. This combination is chosen for its modern cryptographic guarantees, authenticated encryption, and performance. A fresh salt is used for each encryption, making every `.encrypted` file unique even with the same password.

- **Algorithm:** AES.GCM
- **Key Derivation:** HKDF with SHA256
- **Authenticated encryption** ensures integrity + confidentiality

---

## Installation

### 🔽 From Homebrew

```bash
brew tap rodnoy/cryptozap
brew install cryptozap-cli
```

### 📦 For GUI version

```bash
brew install --cask cryptozap
```

---

## Usage

```bash
cryptozap-cli encrypt ~/Documents/secret.pdf
cryptozap-cli decrypt ~/Desktop/secret.encrypted
cryptozap-cli encrypt ~/Documents/secret.pdf -o ~/Desktop
cryptozap-cli encrypt ~/Downloads/FolderToEncrypt --output ~/Documents
cryptozap-cli decrypt ~/Desktop/secret.encrypted --output ~/Downloads
```

You can use either long (`--output`) or short (`-o`) flags.

---

## License

MIT — made by [@rodnoy](https://github.com/rodnoy)

---

## Developer Install

If you're a developer or want to test CLI locally:

```bash
./install.sh
```

This script:
- Builds the CLI
- Installs to `/opt/homebrew/bin`
- Adds autocompletion for bash, zsh, and fish
- Installs the man page
