#!/bin/bash
echo ""
echo "======================================"
echo "  Cynx Manager Free - Setup"
echo "  Developed By Cynx2502"
echo "  sieuthicloud247.com"
echo "======================================"
echo ""

echo "[1/5] Setting up storage..."
termux-setup-storage
sleep 2

echo "[2/5] Updating Termux packages..."
yes | pkg update && yes | pkg upgrade

echo "[3/5] Installing Python & tools..."
pkg install python python-pip tsu libexpat openssl -y

echo "[4/5] Installing Python packages..."
pip install requests colorama aiohttp prettytable

echo "[5/5] Downloading Cynx Manager Free..."
curl -Ls "https://raw.githubusercontent.com/hoangcuong19962303-wq/CynxmanagerFree/main/Cynx-Manager-Free.py?t=$(date +%s)" -o /sdcard/Download/Cynx-Manager-Free.py

# Create shortcut command
echo '#!/bin/bash' > /data/data/com.termux/files/usr/bin/cynxfree
echo 'su -c "/data/data/com.termux/files/usr/bin/python /sdcard/Download/Cynx-Manager-Free.py"' >> /data/data/com.termux/files/usr/bin/cynxfree
chmod +x /data/data/com.termux/files/usr/bin/cynxfree

echo ""
echo "======================================"
echo "  Setup hoan tat!"
echo ""
echo "  Cach chay tool: cynxfree"
echo ""
echo "  Nang cap Premium: sieuthicloud247.com"
echo "======================================"
