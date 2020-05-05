# PHP7.3 + MySQL + nginx + redis + nodejs + python

## Install Scoop

### PowerShell as administrator
```
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
```
```
scoop bucket add extras &&
scoop bucket add versions &&
scoop install git &&
scoop install redis &&
scoop install python &&
scoop install nodejs10
```

## Install Service
```
nssm install php73-9001 "D:\Server\php\php-cgi.exe" "-b 127.0.0.1:9001" &&
nssm install php73-9002 "D:\Server\php\php-cgi.exe" "-b 127.0.0.1:9002" &&
nssm install php73-9003 "D:\Server\php\php-cgi.exe" "-b 127.0.0.1:9003" &&
nssm install php73-9004 "D:\Server\php\php-cgi.exe" "-b 127.0.0.1:9004" &&
nssm install php73-9005 "D:\Server\php\php-cgi.exe" "-b 127.0.0.1:9005" &&
nssm install nginx "D:\Server\nginx\nginx.exe" &&
nssm install redis "C:\Users\light\scoop\apps\redis\current\redis-server.exe"

```

## Install Mysql

[mysql.zip](https://drive.google.com/file/d/1oVDQIUKz8X279kcQ8E5lyDkaPGTtxz5f/view?usp=sharing)
```
mysqld --initialize --init-file=D:\Server\mysql\init.txt
```
### PowerShell as administrator
```
mysqld --install MySQL --defaults-file=D:\Server\mysql\my.cnf
```

## Link .ssh
```
junction ~/.ssh /d/Server/.ssh
```

## Link .bashrc
```
junction ~/.bash_profile /d/Server/.bash_profile &&
junction ~/.bashrc /d/Server/.bashrc
```

## Git
```
git config --global core.autocrlf false &&
git config --global user.name "Nguyễn Hải Quang" &&
git config --global user.email "haiquang9994@gmail.com"
```

## Install VSCode
[VSCode](https://code.visualstudio.com/download)
