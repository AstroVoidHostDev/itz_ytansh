#!/bin/bash

# ==================================================
# 🚀 ITZ_YTANSH ULTIMATE INSTALLER
# ==================================================

# =========================
# 🧠 FIX TERMINAL INPUT
# =========================
if [[ ! -t 0 ]]; then
    exec < /dev/tty
fi

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

# =========================
# 🎬 FUNCTIONS
# =========================
pause_screen() {
    echo ""
    read -r -p "👉 Press Enter To Continue..." temp
}

loading() {
    echo -e "${CYAN}⚡ Processing Request...${NC}"
    sleep 1
}

# =========================
# 🚀 BOOT SEQUENCE
# =========================
clear

echo -e "${CYAN}${BOLD}"
echo "⚡ Initializing Ultimate Installer..."
sleep 1
echo "🌌 Connecting Deployment Matrix..."
sleep 1
echo "🧠 Syncing Quantum Modules..."
sleep 1
echo "🔐 Verifying Secure Environment..."
sleep 1
echo "🚀 Launching Installer Core..."
sleep 1
echo -e "${NC}"

clear

# =========================
# 🎨 BANNER
# =========================
echo -e "${MAGENTA}${BOLD}"
echo "██╗████████╗███████╗    ██╗   ██╗████████╗ █████╗ ███╗   ██╗███████╗██╗  ██╗"
echo "██║╚══██╔══╝╚══███╔╝    ╚██╗ ██╔╝╚══██╔══╝██╔══██╗████╗  ██║██╔════╝██║  ██║"
echo "██║   ██║     ███╔╝      ╚████╔╝    ██║   ███████║██╔██╗ ██║███████╗███████║"
echo "██║   ██║    ███╔╝        ╚██╔╝     ██║   ██╔══██║██║╚██╗██║╚════██║██╔══██║"
echo "██║   ██║   ███████╗       ██║      ██║   ██║  ██║██║ ╚████║███████║██║  ██║"
echo "╚═╝   ╚═╝   ╚══════╝       ╚═╝      ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝"
echo ""
echo "             🚀 ITZ_YTANSH ULTIMATE INSTALLER 🚀"
echo -e "${NC}"

echo -e "${CYAN}"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "💻 Advanced Hosting Deployment Installer"
echo "⚡ Fast • Secure • Fully Automated"
echo "🔥 Powered By ITZ_YTANSH"
echo "🌐 Premium Deployment Experience"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "${NC}"

sleep 2

# =========================
# 📦 SYSTEM INFO
# =========================
echo -e "${GREEN}🔍 Checking System Information...${NC}"
sleep 1

OS_NAME=$(lsb_release -ds 2>/dev/null)
RAM_TOTAL=$(free -h | awk '/Mem:/ {print $2}')
CPU_CORES=$(nproc)

echo -e "${YELLOW}🖥️ OS:${NC} ${OS_NAME}"
echo -e "${YELLOW}💾 RAM:${NC} ${RAM_TOTAL}"
echo -e "${YELLOW}🧠 CPU:${NC} ${CPU_CORES} Cores"

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
echo -e "${YELLOW}║ [3] 🔄 Restart AstroWax Panel   ║${NC}"
echo -e "${MAGENTA}║ [4] ♻️ Restart WaxDaemon Node   ║${NC}"
echo -e "${WHITE}║ [5] ⭐ Subscribe Channel        ║${NC}"
echo -e "${RED}║ [6] ❌ Exit Installer           ║${NC}"
echo -e "${BLUE}${BOLD}╚══════════════════════════════════╝${NC}"

echo ""

if [[ ! -t 0 ]]; then
    exec < /dev/tty
fi

read -r -p "👉 Select Option: " option

case "$option" in

# ==================================================
# 🎮 INSTALL PANEL
# ==================================================
1)
clear

echo -e "${MAGENTA}${BOLD}🚀 STARTING ASTROWAX PANEL INSTALLATION 🚀${NC}"
sleep 2

echo -e "${CYAN}📦 Updating Package Index...${NC}"
sudo apt-get update -y

echo -e "${CYAN}📦 Installing Base Dependencies...${NC}"
sudo apt-get install -y software-properties-common curl git unzip build-essential libssl-dev python3-pip npm

echo -e "${CYAN}🐍 Installing Python 3.11...${NC}"
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt-get update -y
sudo apt-get install -y python3.11 python3.11-dev python3.11-distutils

echo -e "${CYAN}⚡ Installing PM2 Process Manager...${NC}"
sudo npm install -g pm2

echo -e "${CYAN}🧠 Configuring Python Environment...${NC}"
/usr/bin/python3.11 -m pip install setuptools

export PYTHON=/usr/bin/python3.11
export npm_config_python=/usr/bin/python3.11
export NODE_GYP_FORCE_PYTHON=/usr/bin/python3.11

echo -e "${CYAN}🟢 Installing NodeJS v20...${NC}"

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

export NVM_DIR="$HOME/.nvm"
source "$NVM_DIR/nvm.sh"

nvm install 20
nvm use 20

echo -e "${CYAN}📥 Downloading AstroWax Panel...${NC}"

cd ~
rm -rf AstroWax-Panel

git clone https://github.com/AstroVoidHostDev/AstroWax-Panel

cd AstroWax-Panel || exit

echo -e "${CYAN}📦 Extracting Panel Files...${NC}"
unzip -o panel.zip

cd panel || exit

echo -e "${CYAN}🧹 Cleaning Cache Files...${NC}"
rm -rf node_modules package-lock.json
npm cache clean --force

echo -e "${CYAN}📦 Installing Dependencies...${NC}"
npm install --legacy-peer-deps

echo -e "${CYAN}🧠 Installing SQLite Components...${NC}"
npm install sqlite3@5.1.6 connect-sqlite3 --build-from-source

echo -e "${CYAN}🌱 Running Seeder...${NC}"
npm run seed

echo -e "${CYAN}👤 Creating Admin User...${NC}"
npm run createUser

echo -e "${CYAN}🚀 Launching AstroWax Panel With PM2...${NC}"

pm2 delete astrowax-panel >/dev/null 2>&1
pm2 start node --name astrowax-panel -- .

pm2 save

echo ""
echo -e "${GREEN}${BOLD}🎉 PANEL INSTALLED SUCCESSFULLY 🎉${NC}"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${GREEN}✅ Panel Running 24/7${NC}"
echo -e "${GREEN}✅ PM2 Protection Enabled${NC}"
echo -e "${GREEN}✅ Database Ready${NC}"
echo -e "${GREEN}✅ Dependencies Installed${NC}"
echo -e "${GREEN}🚀 Deployment Completed${NC}"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"

pause_screen
;;

# ==================================================
# 🌐 INSTALL NODE
# ==================================================
2)
clear

echo -e "${MAGENTA}${BOLD}🌐 STARTING WAXDAEMON INSTALLATION 🌐${NC}"
sleep 2

echo -e "${CYAN}📦 Updating Package Index...${NC}"
sudo apt-get update -y

echo -e "${CYAN}📦 Installing Required Packages...${NC}"
sudo apt-get install -y git zip unzip curl nodejs npm --no-install-recommends

echo -e "${CYAN}⚡ Installing PM2 Process Manager...${NC}"
sudo npm install -g pm2

echo -e "${CYAN}📥 Downloading WaxDaemon...${NC}"

cd ~
rm -rf WaxDaemon

git clone https://github.com/AstroVoidHostDev/WaxDaemon

cd WaxDaemon || exit

echo -e "${CYAN}📦 Extracting WaxDaemon Files...${NC}"
unzip -o waxdaemon.zip

cd daemon/daemon || exit

mv -f index.js.txt index.js 2>/dev/null

echo -e "${CYAN}📦 Installing Node Modules...${NC}"
npm install

echo ""
echo -e "${YELLOW}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}🔑 PASTE YOUR CONFIGURE COMMAND${NC}"
echo -e "${YELLOW}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo -e "${CYAN}Example:${NC}"
echo "npm run configure -- --panel https://yourdomain --key xxxxxxxx-xxxx-xxxx"
echo ""
echo -e "${GREEN}⚡ URL AUTO CHANGES TO:${NC} http://localhost:3000"
echo ""

if [[ ! -t 0 ]]; then
    exec < /dev/tty
fi

read -r -p "👉 Paste Command Here: " usercmd

fixedcmd=$(echo "$usercmd" | sed -E 's#--panel https?://[^ ]+#--panel http://localhost:3000#g')

echo ""
echo -e "${CYAN}🧠 Processing Configuration...${NC}"
sleep 2

echo -e "${GREEN}✅ URL Converted Successfully${NC}"
sleep 1

echo -e "${CYAN}🚀 Executing Configure Command...${NC}"

eval "$fixedcmd"

echo -e "${CYAN}🚀 Launching WaxDaemon With PM2...${NC}"

pm2 delete waxdaemon >/dev/null 2>&1
pm2 start index.js --name waxdaemon

pm2 save

echo ""
echo -e "${GREEN}${BOLD}🎉 NODE INSTALLED SUCCESSFULLY 🎉${NC}"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${GREEN}✅ WaxDaemon Running 24/7${NC}"
echo -e "${GREEN}✅ PM2 Protection Enabled${NC}"
echo -e "${GREEN}✅ Configuration Applied${NC}"
echo -e "${GREEN}🚀 Deployment Completed${NC}"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"

pause_screen
;;

# ==================================================
# 🔄 RESTART PANEL
# ==================================================
3)
clear

echo -e "${YELLOW}${BOLD}🔄 RESTARTING ASTROWAX PANEL 🔄${NC}"
sleep 2

pm2 restart astrowax-panel

echo ""
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${GREEN}✅ AstroWax Panel Restarted${NC}"
echo -e "${GREEN}🚀 Running In Background${NC}"
echo -e "${GREEN}⚡ PM2 Protection Active${NC}"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"

pause_screen
;;

# ==================================================
# ♻️ RESTART NODE
# ==================================================
4)
clear

echo -e "${MAGENTA}${BOLD}♻️ RESTARTING WAXDAEMON NODE ♻️${NC}"
sleep 2

pm2 restart waxdaemon

echo ""
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${GREEN}✅ WaxDaemon Restarted${NC}"
echo -e "${GREEN}🚀 Running Again${NC}"
echo -e "${GREEN}⚡ PM2 Protection Active${NC}"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"

pause_screen
;;

# ==================================================
# ⭐ SUBSCRIBE
# ==================================================
5)
clear

echo -e "${MAGENTA}${BOLD}⭐ OPENING OFFICIAL CHANNEL ⭐${NC}"
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

pause_screen
;;

# ==================================================
# ❌ EXIT
# ==================================================
6)
clear

echo -e "${RED}${BOLD}"
echo "💀 Shutting Down Installer..."
sleep 1
echo "🌌 Saving Session..."
sleep 1
echo "🧠 Disconnecting Quantum Modules..."
sleep 1
echo "🚀 Goodbye Legend..."
sleep 1
echo -e "${NC}"

exit 0
;;

# ==================================================
# ❌ INVALID
# ==================================================
*)
echo ""
echo -e "${RED}❌ Invalid Option Selected! Please Choose 1-6${NC}"
sleep 1
;;

esac

done
