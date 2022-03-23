# System Daemon written in NodeJS

This is a NodeJS application that run in background with detached mode. For detached mode, it means it doesn't connect to stdin and stdout. 

This program keep adding a new line every 10 seconds to /tmp/log-js.txt.


# Setup
Type the following command in any linux server:
```
./setup.sh
```

It will ask you for sudo password to create a system daemon configuration.

# System Daemon Command

You can start the systemd by:
```
sudo systemctl start daemon-demo-js
```

You can stop the systemd by:
```
sudo systemctl stop daemon-demo-js
```

You can check the status by:
```
sudo systemctl status daemono-demo-js
```


