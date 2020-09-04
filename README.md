# Developer Database Setup Tool
Use this to copy the schema (no data) of a remote MySQL database to an instance
running on your local machine. 

## Installation (Optional)
```
make install
```

### Uninstallation
```
make uninstall
```

## Usage
```
devdbsetup \
    <database schema> \
    <remote database host> \
    <remote database port> \
    <remote database user> \
    <local database user>
```

## Dumping Tables With Encryption
If you're having trouble dumping tables with `ENCRYPTION='Y'`, add the following to your `/usr/local/etc/my.cnf` file:
```
[mysqld]
early-plugin-load=keyring_file.so
```
Then fire up `mysql` and enter the following query:
```
install plugin keyring_file soname 'keyring_file.so';
```
