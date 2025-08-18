# WordPress Development Environment

## 📖 Description

This repository provides a **Docker-based development environment** for a WordPress app used in a school assignment.  
It is set up to work with a **custom theme** and **plugin** via Git submodules.

👉 The purpose of the app is to \_\_\_\_ (fill in your project’s main goal here).

---

## 🚀 Installation

Clone the repository (including submodules):

```bash
git clone --recursive https://github.com/TmRAaEx/wordpress-development-env
```

## ⚙️ Setup

1. Clone this project.

2. Download WordPress and place everything except the wp-content folder inside the /html directory.

3. Build the containers:

```bash
docker compose build
```

or

```bash
docker build .
```

4. Start the environment

```bash
docker compose up
```

5. Access phpMyAdmin at http://localhost:8085 (or your configured port).

6. Create or import a database.

7. Access your WordPress site at http://localhost:8084 (or your configured site port).

8. Follow the WordPress setup steps.

- Database name: the one you created in step 6

- Database user: **root** (or your configured user in `docker-compose.yml`)

- Database password: **notSecureChangeME** (or your configured password in `docker-compose.yml`)

- Database host: **db**

## 🔧 Configuration

You can configure:

- Site ports

- Database settings

- Mounted volumes

by editing the docker-compose.yml file.

<p> <img width="500" alt="docker-compose screenshot" src="https://github.com/user-attachments/assets/f5cc220e-8d4c-46b6-8812-44b350b511a7" /> </p>

## 💾 Backup & Restore

To back up the environment (database + plugins + themes + settings), run:

```bash
./backup.sh
```

### Notes:

- The script requires execute permissions.

On Linux/macOS:

```bash
chmod +x ./backup.sh
```

- On Windows, you’ll need WSL (Windows Subsystem for Linux) to run the script.

After the backup, you can share or upload the archive to a teammate or keep it as a safe copy.

## 🛠️ Tech Stack

- WordPress

- Docker / Docker Compose

- phpMyAdmin

- Custom theme & plugin (via Git submodules)
