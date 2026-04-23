# 🧠 ADHDeveloper Toolkit

> **The toolkit that speaks your language — not computer's.**

CLI tools built for developers whose brains work differently. Plain English. No jargon. No shame.

[![License: MIT](https://img.shields.io/badge/License-MIT-purple.svg)](https://opensource.org/licenses/MIT)
[![Python 3.8+](https://img.shields.io/badge/python-3.8+-purple.svg)](https://www.python.org/downloads/)
[![Built in Brighton](https://img.shields.io/badge/built%20in-Brighton%20UK-cyan.svg)]()

---

## 🤔 Why does this exist?

Error messages written for machines. Git commands that need a PhD to understand. Infrastructure docs that assume you already know everything.

If your brain works differently — ADHD, autism, dyslexia, or just wired uniquely — most developer tools weren't designed for you.

**The ADHDeveloper Toolkit exists because one frustrated developer got tired of feeling like the problem. They weren't. And neither are you.**

---

## 🛠️ The Tools

### 🗣️ GitSpeak — Git without the syntax
Type one word. GitSpeak handles the rest.

```bash
$ gs

gitspeak → save        # stage + commit + push in one go
gitspeak → undo        # safely undo last commit  
gitspeak → status      # see what's changed in plain English
gitspeak → pull        # grab latest changes
gitspeak → log         # recent commits in plain English
```

### 🔍 Decipher — Errors in plain English
Paste any error. Get a plain English explanation + exactly how to fix it.

```bash
$ decipher

Paste error here: Permission denied (publickey)
→ What this means: Wrong username — trying to log in as the wrong person
→ How to fix it:  Check your SSH config and specify the right username
```

### ⚒️ ansible-forge — Infrastructure without the overwhelm
Type 3 letters. Pick a service. Watch the boilerplate build itself.

```bash
$ forge

forge → pih     # suggests: pihole — network-wide ad blocker
forge → doc     # suggests: docker — container runtime
forge → unb     # suggests: unbound — recursive DNS resolver
```

---

## 🚀 Getting Started

### Prerequisites
- Python 3.8+
- pip
- git

### Installation

```bash
# 1. Clone the toolkit
git clone https://github.com/phoenixsoftwebbrighton/adhddeveloper-toolkit.git
cd adhddeveloper-toolkit

# 2. Install dependencies
pip install rich

# 3. Add aliases to your shell (~/.zshrc or ~/.bashrc)
echo 'alias gs="python3 ~/adhddeveloper-toolkit/gitspeak/gitspeak.py"' >> ~/.zshrc
echo 'alias decipher="python3 ~/adhddeveloper-toolkit/decipher/decipher.py"' >> ~/.zshrc
echo 'alias forge="python3 ~/adhddeveloper-toolkit/ansible-forge/ansible-forge.py"' >> ~/.zshrc

# 4. Reload your shell
source ~/.zshrc

# 5. You're ready
gs
```

---

## 🎨 Design Philosophy

Every tool in this kit follows the same rules:

- **Plain English always** — no jargon, no assumptions
- **One thing at a time** — max 2-3 options at any decision point
- **Explain the why** — not just what to do, but why
- **Never make you feel stupid** — because you're not
- **Local compute only** — nothing phones home, privacy first

---

## 🤝 Contributing

Found an error Decipher doesn't know yet? Got a feature idea? Built something on top of this toolkit?

We'd love to hear from you.

- 🐛 [Report a bug](https://github.com/phoenixsoftwebbrighton/adhddeveloper-toolkit/issues)
- 💡 [Request a feature](https://github.com/phoenixsoftwebbrighton/adhddeveloper-toolkit/issues)
- ⭐ Star the repo if this helped you

---

## 📍 Built in Brighton, UK

By a neurodivergent developer who got tired of feeling like the problem.

> *"Built for the developers who kept being told the problem was them. It wasn't."*

---

## 📄 License

MIT — free forever. Use it, fork it, build on it.

---

*ADHDeveloper Toolkit © 2026 — made for brains that work differently* 🧠
