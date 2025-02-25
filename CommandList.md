
##Command for runining server

```
sudo ./ippeveprinter -p 8000 -vv -c "/home/matt/Documents/github/ippserver/test/tools/ev_log.sh" -a /home/matt/Documents/github/ippeveprinter/LabelPrinter.conf -K /home/matt/Documents/keys_certs "LabelPrinter"
```

##Command for runining server with encryption

```
sudo ./ippeveprinter -p 8000 -vv -c "/home/matt/Documents/github/ippserver/test/tools/ev_log.sh" -a /home/matt/Documents/github/ippeveprinter/LabelPrinter.conf -K /home/matt/Documents/keys_certs --pam-service ippserver "LabelPrinter"
```

##Pam Config

```
# /etc/pam.d/ippserver
auth     sufficient pam_pwdfile.so pwdfile=/home/matt/Documents/password/passwd debug
account  required   pam_permit.so
session  required   pam_unix.so
session  optional   pam_systemd.so
```

##Adding users to database pam_pwdfile

```
htpasswd -b -B /home/matt/Documents/password/passwd testuser mysecretpassword
```

