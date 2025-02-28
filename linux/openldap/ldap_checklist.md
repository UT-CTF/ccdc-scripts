## Dump slapd conf
```bash
sudo ldapsearch -Q -LLL -Y EXTERNAL -H ldapi:/// -b cn=config
```

## Anonymous LDAP search
```bash
sudo ldapsearch -x -H ldap:// -b dc=zombocom,dc=utha,dc=sh
```

## Authenticated LDAP search
```bash
sudo ldapsearch -x -H ldap:// -b dc=zombocom,dc=utha,dc=sh -D cn=admin,dc=zombocom,dc=utha,dc=sh -W
```
## Get hash for password
```bash
slappasswd -h {SSHA}
```

## LDAP add from ldif
```bash
ldapadd -D cn=admin,dc=zombocom,dc=utha,dc=sh -W
-f top-level-ou.ldif
```



```
dn: ou=people,dc=param,dc=co,dc=in
objectClass: top
objectClass: organizationalUnit
ou: people

dn: ou=groups,dc=param,dc=co,dc=in
objectClass: top
objectClass: organizationalUnit
ou: groups

dn: uid=test2,ou=Users,dc=zombocom,dc=utha,dc=sh
objectClass: account
objectClass: posixAccount
cn: test2
uid: test2
uidNumber: 10001
gidNumber: 10000
homeDirectory: /home/test2
loginShell: /bin/bash
gecos: test2
description: User account
userPassword:: e1NTSEF9SFVZNk5qVU04czFnRllFU21vNmdkTENVNWpNbEpMTlMK
```

# First 5 minutes:
- Get into the LDAP server ASAP
- Double check password restrictions in portal
- Generate a new_password.csv for all ldap users on the ldap server
- scp the csv to local system
- Generate a ldif file from csv
- ldapmodify using the ldif file
- Verify changes went through using user/pass on different machine.
- Submit password change on portal using local csv
