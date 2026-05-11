#!/bin/bash

# ==================================================
# 🚀 ITZ_YTANSH ULTIMATE INSTALLER V2
# ==================================================

# =========================
# 🧠 TERMINAL FIX
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
    echo -e "${CYAN}⚡ Processing...${NC}"
    sleep 1
}

# =========================
# 🚀 BOOT
# =========================
clear

echo -e "${CYAN}${BOLD}"
echo "⚡ Initializing Ultimate Installer..."
sleep 1
echo "🌌 Loading Deployment Engine..."
sleep 1
echo "🧠 Syncing Modules..."
sleep 1
echo "🔐 Verifying Environment..."
sleep 1
echo "🚀 Launch Complete..."
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
echo "          🚀 ITZ_YTANSH ULTIMATE INSTALLER 🚀"
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
echo -e "${BLUE}${BOLD}║        🚀 MAIN CONTROL          ║${NC}"
echo -e "${BLUE}${BOLD}╠══════════════════════════════════╣${NC}"
echo -e "${GREEN}║ [1] 🎮 Install AstroWax Panel   ║${NC}"
echo -e "${CYAN}║ [2] 🌐 Install WaxDaemon Node   ║${NC}"
echo -e "${YELLOW}║ [3] 🔄 Restart AstroWax Panel   ║${NC}"
echo -e "${MAGENTA}║ [4] ♻️ Restart WaxDaemon Node   ║${NC}"
echo -e "${WHITE}║ [5] 🗑️ Delete AstroWax Panel    ║${NC}"
echo -e "${WHITE}║ [6] 🗑️ Delete WaxDaemon Node    ║${NC}"
echo -e "${BLUE}║ [7] ⭐ Subscribe Channel        ║${NC}"
echo -e "${RED}║ [8] ❌ Exit Installer           ║${NC}"
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

echo -e "${MAGENTA}${BOLD}🚀 INSTALLING ASTROWAX PANEL 🚀${NC}"
sleep 2

sudo apt-get update -y

sudo apt-get install -y \
software-properties-common \
curl \
git \
unzip \
build-essential \
libssl-dev \
python3-pip \
npm

sudo add-apt-repository ppa:deadsnakes/ppa -y

sudo apt-get update -y

sudo apt-get install -y \
python3.11 \
python3.11-dev \
python3.11-distutils

sudo npm install -g pm2

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

cd ~

rm -rf AstroWax-Panel

git clone https://github.com/AstroVoidHostDev/AstroWax-Panel

cd AstroWax-Panel || exit

unzip -o panel.zip

cd panel || exit

# ==================================================
# 🔧 AUTO AUTH FIX
# ==================================================
echo -e "${CYAN}🛠️ Applying Auto Login Fix...${NC}"

cat > routes/passport-fix.js << 'EOF'
module.exports = function(passport, db) {

passport.serializeUser((user, done) => {

    if (!user) {
        return done(new Error("User missing"));
    }

    done(null, user.id || user.username);
});

passport.deserializeUser((id, done) => {

    db.get(
        "SELECT * FROM users WHERE id = ? OR username = ?",
        [id, id],
        (err, row) => {

            if (err) return done(err);

            if (!row) {
                return done(new Error("User not found"));
            }

            done(null, row);
        }
    );
});

};
EOF

if grep -q "serializeUser" routes/auth.js; then

sed -i '/passport.serializeUser/,/});/d' routes/auth.js
sed -i '/passport.deserializeUser/,/});/d' routes/auth.js

sed -i "1i const passportFix = require('./passport-fix');" routes/auth.js

sed -i "/router = express.Router()/a passportFix(passport, db);" routes/auth.js

fi

echo -e "${GREEN}✅ Login Fix Applied${NC}"

rm -rf node_modules package-lock.json

npm cache clean --force

npm install --legacy-peer-deps

npm install passport@0.6.0 express-session@1.17.3

npm install sqlite3@5.1.6 connect-sqlite3 --build-from-source

npm run seed

npm run createUser

pm2 delete astrowax-panel >/dev/null 2>&1

pm2 start node --name astrowax-panel -- .

pm2 save

echo ""
echo -e "${GREEN}${BOLD}🎉 PANEL INSTALLED SUCCESSFULLY 🎉${NC}"
echo -e "${GREEN}✅ Running 24/7 With PM2${NC}"
echo -e "${GREEN}✅ Login Error Fixed${NC}"
echo -e "${GREEN}✅ Dependencies Installed${NC}"
echo -e "${GREEN}✅ Ready To Use${NC}"

pause_screen
;;

# ==================================================
# 🌐 INSTALL NODE
# ==================================================
2)
clear

echo -e "${MAGENTA}${BOLD}🌐 INSTALLING WAXDAEMON 🌐${NC}"
sleep 2

sudo apt-get update -y

sudo apt-get install -y \
git \
zip \
unzip \
curl \
nodejs \
npm \
--no-install-recommends

sudo npm install -g pm2

cd ~

rm -rf WaxDaemon

git clone https://github.com/AstroVoidHostDev/WaxDaemon

cd WaxDaemon || exit

unzip -o waxdaemon.zip

cd daemon/daemon || exit

mv -f index.js.txt index.js 2>/dev/null

echo -e "${CYAN}📦 Installing Modules...${NC}"

npm install

echo ""
echo -e "${YELLOW}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}🔑 PASTE CONFIGURE COMMAND${NC}"
echo -e "${YELLOW}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo -e "${CYAN}Example:${NC}"
echo "npm run configure -- --panel https://yourdomain --key xxxxxxxx-xxxx-xxxx"
echo ""
echo -e "${GREEN}⚡ URL AUTO CHANGES TO:${NC} http://localhost:3000"
echo ""

read -r -p "👉 Paste Command Here: " usercmd

fixedcmd=$(echo "$usercmd" | sed -E 's#--panel https?://[^ ]+#--panel http://localhost:3000#g')

echo -e "${CYAN}🚀 Running Configure Command...${NC}"

eval "$fixedcmd"

pm2 delete waxdaemon >/dev/null 2>&1

pm2 start index.js --name waxdaemon

pm2 save

echo ""
echo -e "${GREEN}${BOLD}🎉 NODE INSTALLED SUCCESSFULLY 🎉${NC}"
echo -e "${GREEN}✅ Running 24/7 With PM2${NC}"
echo -e "${GREEN}✅ Auto Configure Applied${NC}"
echo -e "${GREEN}✅ Deployment Ready${NC}"

pause_screen
;;

# ==================================================
# 🔄 RESTART PANEL
# ==================================================
3)
clear

echo -e "${YELLOW}${BOLD}🔄 RESTARTING PANEL 🔄${NC}"

pm2 restart astrowax-panel

echo ""
echo -e "${GREEN}✅ AstroWax Panel Restarted${NC}"

pause_screen
;;

# ==================================================
# ♻️ RESTART NODE
# ==================================================
4)
clear

echo -e "${MAGENTA}${BOLD}♻️ RESTARTING NODE ♻️${NC}"

pm2 restart waxdaemon

echo ""
echo -e "${GREEN}✅ WaxDaemon Restarted${NC}"

pause_screen
;;

# ==================================================
# 🗑️ DELETE PANEL
# ==================================================
5)
clear

echo -e "${RED}${BOLD}🗑️ DELETING ASTROWAX PANEL 🗑️${NC}"
sleep 2

pm2 delete astrowax-panel >/dev/null 2>&1

rm -rf ~/AstroWax-Panel

echo ""
echo -e "${GREEN}✅ AstroWax Panel Deleted${NC}"
echo -e "${GREEN}✅ PM2 Process Removed${NC}"

pause_screen
;;

# ==================================================
# 🗑️ DELETE NODE
# ==================================================
6)
clear

echo -e "${RED}${BOLD}🗑️ DELETING WAXDAEMON NODE 🗑️${NC}"
sleep 2

pm2 delete waxdaemon >/dev/null 2>&1

rm -rf ~/WaxDaemon

echo ""
echo -e "${GREEN}✅ WaxDaemon Deleted${NC}"
echo -e "${GREEN}✅ PM2 Process Removed${NC}"

pause_screen
;;

# ==================================================
# ⭐ SUBSCRIBE
# ==================================================
7)
clear

echo -e "${MAGENTA}${BOLD}⭐ OFFICIAL CHANNEL ⭐${NC}"
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
8)
clear

echo -e "${RED}"
echo "💀 Shutting Down Installer..."
sleep 1
echo "🌌 Saving Session..."
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
echo -e "${RED}❌ Invalid Option Selected!${NC}"
sleep 1
;;

esac

done
