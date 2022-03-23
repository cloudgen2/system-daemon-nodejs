#!/bin/bash
chmod +x src/daemon-demo-js
sudo cp src/daemon-demo-js /usr/local/bin

cat > /tmp/daemon-demo-js.service <<EOF
[Unit]
Description=Daemon Demo in NodeJS

[Service]
Type=forking
User=root
WorkingDirectory=/root
Environment="PATH=/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin"
ExecStart=/usr/local/bin/daemon-demo-js

[Install]
WantedBy=multi-user.target
EOF
sudo cp /tmp/daemon-demo-js.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl start daemon-demo-js

watch -n 2 "cat /tmp/log-js.txt"

