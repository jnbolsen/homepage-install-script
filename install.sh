#!/bin/bash -x

APP="homepage" 
LOCAL_IP=$(hostname -I | awk '{print $1}')
RELEASE=$(curl -fsSL https://api.github.com/repos/gethomepage/homepage/releases/latest | grep "tag_name" | awk '{print substr($2, 3, lengt>

apt update && apt upgrade -y

npm install -g pnpm

msg_info "Installing ${APP} v${RELEASE}"
curl -fsSL "https://github.com/gethomepage/homepage/archive/refs/tags/v${RELEASE}.tar.gz" -o "v${RELEASE}.tar.gz"
tar -xzf v${RELEASE}.tar.gz
rm -rf v${RELEASE}.tar.gz
mkdir -p /opt/${APP}/config
mv ${APP}-${RELEASE}/* /opt/${APP}  
rm -rf ${APP}-${RELEASE}
cd /opt/${APP}
cp /opt/${APP}/src/skeleton/* /opt/${APP}/config
pnpm install
pnpm build
echo "HOMEPAGE_ALLOWED_HOSTS=localhost:3000,${LOCAL_IP}:3000,${APP}.home.jnbolsen.com:3000" >/opt/${APP}/.env
echo "${RELEASE}" >/opt/${APP}_version.txt
msg_ok "Installed ${APP} v${RELEASE}!"

msg_info "Creating service"
cat <<EOF >/etc/systemd/system/homepage.service
[Unit]
Description=${APP}  
After=network.target
StartLimitIntervalSec=0
[Service]
Type=simple
Restart=always
RestartSec=1
User=root
WorkingDirectory=/opt/${APP}/
ExecStart=pnpm start
[Install]
WantedBy=multi-user.target
EOF
systemctl enable -q --now ${APP}
msg_ok "Created service!"
