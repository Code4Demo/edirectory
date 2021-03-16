## NetQI eDirectory

### Run the demo

Please run with the run.sh 
```
sudo ./run.sh
```
You will goto the server info

```
  Tree Name             : tree
  Server DN             : ldap.demo
  Admin DN              : admin.org
  NCP Interface(s)      : @1524
  HTTP Interface(s)     : @8028
  HTTPS Interface(s)    : @8030
  LDAP TCP Port         : 389
  LDAP TLS Port         : 636
  LDAP TLS Required     : Yes
  Duplicate Tree Lookup : Yes
```

The admin password is **test**

### Use Apache Directory Studio connect

Here are demo LADP server info

```
server: ladps://localhost:1636
Hostname: localhost
Port: 1636
Encrytion Method: SSL  (Use SSL encryption(ldaps://)) 
Auth Method: Simple Authenticaiton
Bind DN :  cn=admin,o=org
Bind password: test

```


3. You can load the ldif file(./doc/users.netiQeDir.ldif)
