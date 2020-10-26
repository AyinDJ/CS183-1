#We don't expect to be using remote connections for these labs
sudo systemctl stop sshd

#No need to tune power consumption, latency, etc. for these labs
sudo systemctl stop tuned

#From what I understand this is for a mail server which we probably won't use
sudo systemctl stop postfix
