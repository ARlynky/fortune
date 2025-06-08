# FORTUNE

This repo is for **personal use** and not intended for public consumption (yet!)
I’m using it to learn how to share CLI tools and packages like a real developer.

A simple script that prints a random "fortune" from a text file.

---

## 🛠 Installation

> ⚠️ Only works on **Linux-based systems** (for now)

To install this package, run the following command in your terminal:

```sh
curl -sSL https://raw.githubusercontent.com/ARlynky/fortune/main/install.sh | bash
```

This will:

* Clone the repo into `~/.local/share/fortune`
* Add a launcher to `~/.local/bin/fortune`
* Let you run `fortune` from anywhere (if `~/.local/bin` is in your `PATH`)

## 🛠 Updating

You can update it via running the install script again either from the
repo (.local/share/install.sh) or from the web like before
note this will reset your fortunes.txt file if you edited it
although this project is still a work in progress and small
so i don't think you should care to update

---

## 📂 Project Structure

fortune/
├── fortune.py       # The main script
├── fortunes.txt     # A list of random fortune messages
├── install.sh       # Install script for quick setup
└── README.md

---

## 🤓 Notes

* You can edit `fortunes.txt` to add your own messages.
* This is a learning repo, so stuff might break or change often.
* Feel free to fork or copy if you're also learning how to share CLI tools!

---

## 🧠 Why This Exists

I'm experimenting with lightweight ways to share personal tools — using
Git, Bash, Python, and curl — without needing to dive into full
package managers like `apt`, `pacman`, or PyPI (yet).
