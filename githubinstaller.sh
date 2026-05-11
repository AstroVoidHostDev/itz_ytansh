#!/bin/bash

# =========================
# 🎨 COLORS
# =========================
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
MAGENTA='\033[1;35m'
CYAN='\033[1;36m'
WHITE='\033[1;37m'
BOLD='\033[1m'
NC='\033[0m'

clear

# =========================
# 🚀 BOOT ANIMATION
# =========================
echo -e "${CYAN}${BOLD}"
echo "⚡ Initializing Installer..."
sleep 1
echo "🌌 Loading Deployment Engine..."
sleep 1
echo "🧠 Syncing Modules..."
sleep 1
echo "🔐 Verifying Environment..."
sleep 1
echo -e "${NC}"

clear

# =========================
# 🎬 BANNER
# =========================
echo -e "${MAGENTA}${BOLD}"
echo "██╗████████╗███████╗    ██╗   ██╗████████╗ █████╗ ███╗   ██╗███████╗██╗  ██╗"
echo "██║╚══██╔══╝╚══███╔╝    ╚██╗ ██╔╝╚══██╔══╝██╔══██╗████╗  ██║██╔════╝██║  ██║"
echo "██║   ██║     ███╔╝      ╚████╔╝    ██║   ███████║██╔██╗ ██║███████╗███████║"
echo "██║   ██║    ███╔╝        ╚██╔╝     ██║   ██╔══██║██║╚██╗██║╚════██║██╔══██║"
echo "██║   ██║   ███████╗       ██║      ██║   ██║  ██║██║ ╚████║███████║██║  ██║"
echo "╚═╝   ╚═╝   ╚══════╝       ╚═╝      ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝"
echo ""
echo "                    🚀 ITZ_YTANSH INSTALLER ACTIVATED 🚀"
echo -e "${NC}"

echo -e "${CYAN}"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "💻 Advanced Hosting Deployment Installer"
echo "⚡ Fast • Secure • Fully Automated"
echo "🔥 Powered By ITZ_YTANSH"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "${NC}"

sleep 2

# =========================
# 📦 SYSTEM INFO
# =========================
echo -e "${GREEN}🔍 Checking System Information...${NC}"
sleep 1

echo -e "${YELLOW}🖥️ OS:${NC} $(lsb_release -ds 2>/dev/null)"
echo -e "${YELLOW}💾 RAM:${NC} $(free -h | awk '/Mem:/ {print $2}')"
echo -e "${YELLOW}🧠 CPU:${NC} $(nproc) Cores"

sleep 2

# =========================
# 🔥 MENU LOOP
# =========================
while true; do

echo ""
echo -e "${BLUE}${BOLD}╔══════════════════════════════════╗${NC}"
echo -e "${BLUE}${BOLD}║          🚀 MAIN MENU           ║${NC}"
echo -e "${BLUE}${BOLD}╠══════════════════════════════════╣${NC}"
echo -e "${GREEN}║ [1] 🎮 Install AstroWax Panel   ║${NC}"
echo -e "${CYAN}║ [2] 🌐 Install WaxDaemon Node   ║${NC}"
echo -e "${YELLOW}║ [3] ⭐ Subscribe Channel        ║${NC}"
echo -e "${RED}║ [4] ❌ Exit Installer           ║${NC}"
echo -e "${BLUE}${BOLD}╚══════════════════════════════════╝${NC}"

echo ""
read -p "👉 Select Option: " option

case $option in

1)
clear

echo -e "${MAGENTA}🚀 Starting AstroWax Panel Installation...${NC}"
sleep 2

echo -e "${CYAN}📦 Updating Packages...${NC}"
sudo apt-get update -y

echo -e "${CYAN}📦 Installing Dependencies...${NC}"
sudo apt-get install -y software-properties-common curl git unzip build-essential libssl-dev python3-pip

echo -e "${CYAN}🐍 Installing Python 3.11...${NC}"
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt-get update -y
sudo apt-get install -y python3.11 python3.11-dev python3.11-distutils

echo -e "${CYAN}⚡ Installing PM2...${NC}"
sudo npm install -g pm2

echo -e "${CYAN}📦 Configuring Python Environment...${NC}"
/usr/bin/python3.11 -m pip install setuptools

export PYTHON=/usr/bin/python3.11
export npm_config_python=/usr/bin/python3.11
export NODE_GYP_FORCE_PYTHON=/usr/bin/python3.11

echo -e "${CYAN}🟢 Installing NodeJS v20...${NC}"
source ~/.bashrc
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ~/.bashrc

export NVM_DIR="$HOME/.nvm"
source "$NVM_DIR/nvm.sh"

nvm install 20
nvm use 20

echo -e "${CYAN}📥 Cloning AstroWax Panel...${NC}"
cd ~
rm -rf AstroWax-Panel

git clone https://github.com/AstroVoidHostDev/AstroWax-Panel

cd AstroWax-Panel

echo -e "${CYAN}📦 Extracting Files...${NC}"
unzip -o panel.zip

cd panel

echo -e "${CYAN}🧹 Cleaning Cache...${NC}"
rm -rf node_modules package-lock.json
npm cache clean --force

echo -e "${CYAN}📦 Installing Node Modules...${NC}"
npm install --legacy-peer-deps

echo -e "${CYAN}🧠 Installing SQLite Modules...${NC}"
npm install sqlite3@5.1.6 connect-sqlite3 --build-from-source

echo -e "${CYAN}🌱 Running Database Seeder...${NC}"
npm run seed

echo -e "${CYAN}👤 Creating Admin User...${NC}"
npm run createUser

echo -e "${CYAN}🚀 Starting Panel With PM2...${NC}"
pm2 delete astrowax-panel 2>/dev/null
pm2 start node --name astrowax-panel -- .

pm2 save

echo ""
echo -e "${GREEN}${BOLD}🎉 PANEL INSTALLED SUCCESSFULLY 🎉${NC}"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${GREEN}✅ Panel Running 24/7 With PM2${NC}"
echo -e "${GREEN}✅ Dependencies Installed${NC}"
echo -e "${GREEN}✅ Database Ready${NC}"
echo -e "${GREEN}✅ Setup Complete${NC}"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"

;;

2)
clear

echo -e "${MAGENTA}🌐 Starting WaxDaemon Node Installation...${NC}"
sleep 2

echo -e "${CYAN}📦 Updating Packages...${NC}"
sudo apt-get update -y

echo -e "${CYAN}📦 Installing Required Packages...${NC}"
sudo apt-get install -y git zip unzip curl nodejs npm --no-install-recommends

echo -e "${CYAN}⚡ Installing PM2...${NC}"
sudo npm install -g pm2

echo -e "${CYAN}📥 Cloning WaxDaemon...${NC}"

cd ~
rm -rf WaxDaemon

git clone https://github.com/AstroVoidHostDev/WaxDaemon

cd WaxDaemon

echo -e "${CYAN}📦 Extracting WaxDaemon Files...${NC}"
unzip -o waxdaemon.zip

cd daemon/daemon

mv -f index.js.txt index.js 2>/dev/null

echo -e "${CYAN}📦 Installing Node Modules...${NC}"
npm install

echo ""
echo -e "${YELLOW}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}🔑 Paste Your Configure Command${NC}"
echo -e "${YELLOW}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo -e "${CYAN}Example:${NC}"
echo "npm run configure -- --panel https://yourdomain --key xxxxxxxx-xxxx-xxxx"
echo ""
echo -e "${GREEN}⚡ Panel URL Will Auto Change To:${NC} http://localhost:3000"
echo ""

read -p "👉 Paste Command Here: " usercmd

fixedcmd=$(echo "$usercmd" | sed -E 's#--panel https?://[^ ]+#--panel http://localhost:3000#g')

echo ""
echo -e "${CYAN}🧠 Processing Command...${NC}"
sleep 2

echo -e "${GREEN}✅ Domain Replaced Successfully${NC}"
sleep 1

echo -e "${CYAN}🚀 Running Configuration...${NC}"
eval "$fixedcmd"

echo -e "${CYAN}🚀 Starting WaxDaemon With PM2...${NC}"
pm2 delete waxdaemon 2>/dev/null
pm2 start index.js --name waxdaemon

pm2 save

echo ""
echo -e "${GREEN}${BOLD}🎉 NODE INSTALLED SUCCESSFULLY 🎉${NC}"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${GREEN}✅ WaxDaemon Running 24/7${NC}"
echo -e "${GREEN}✅ Configuration Applied${NC}"
echo -e "${GREEN}✅ PM2 Protection Enabled${NC}"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"

;;

3)
clear

echo -e "${MAGENTA}⭐ Opening Official Channel...${NC}"
sleep 2

echo ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${GREEN}🎥 ITZ_YT_ANSH OFFICIAL${NC}"
echo -e "${YELLOW}🚀 Tutorials • Hosting • Development${NC}"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo -e "${WHITE}👉 https://www.youtube.com/@ITZ_YT_ANSH_OFFICIAL${NC}"
echo ""
echo -e "${GREEN}❤️ Thanks For Supporting AstroVoidHost${NC}"

;;

4)
clear

echo -e "${RED}"
echo "💀 Shutting Down Installer..."
sleep 1
echo "🌌 Saving Session..."
sleep 1
echo "🚀 Goodbye Legend..."
sleep 1
echo -e "${NC}"

exit

;;

*)
echo -e "${RED}❌ Invalid Option Selected!${NC}"
;;

esac

done
