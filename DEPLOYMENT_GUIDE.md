# 🚀 Muhammad Saad Raza — Portfolio Deployment Guide

## 📁 Files Required
Make sure both files are in the **same folder**:
```
your-folder/
├── Dockerfile
└── saad_raza_portfolio.html
```

---

## 🐳 Deploy with Docker (Local)

### Step 1 — Build the Docker image
```bash
docker build -t saad-portfolio .
```

### Step 2 — Run the container
```bash
docker run -d -p 8080:80 --name saad-portfolio saad-portfolio
```

### Step 3 — Open in browser
```
http://localhost:8080
```

### Stop / Remove container
```bash
docker stop saad-portfolio
docker rm saad-portfolio
```

---

## ☁️ Deploy to a Cloud Server (VPS / AWS / DigitalOcean)

### Step 1 — Install Docker on your server
```bash
sudo apt update
sudo apt install docker.io -y
sudo systemctl start docker
```

### Step 2 — Copy files to server
```bash
scp Dockerfile saad_raza_portfolio.html user@your-server-ip:/home/user/portfolio/
```

### Step 3 — SSH into server & deploy
```bash
ssh user@your-server-ip
cd /home/user/portfolio
docker build -t saad-portfolio .
docker run -d -p 80:80 --name saad-portfolio saad-portfolio
```

Your portfolio will be live at: `http://your-server-ip`

---

## 🌐 Deploy to Railway (Free & Easy)

1. Push your files to a GitHub repo
2. Go to https://railway.app
3. Click **New Project → Deploy from GitHub**
4. Select your repo — Railway auto-detects the Dockerfile
5. Your portfolio goes live with a public URL instantly!

---

## 🟣 Deploy to Render (Free)

1. Push files to GitHub
2. Go to https://render.com → **New Web Service**
3. Connect your GitHub repo
4. Set **Environment** to `Docker`
5. Click **Deploy** — get a free `.onrender.com` URL

---

## 💡 Tips
- The portfolio is a **single HTML file** — no database or backend needed
- Nginx serves it ultra-fast and uses minimal memory (~5MB)
- You can map any domain to your server IP using DNS A-records
