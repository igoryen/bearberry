
the `hosts` file:

```
127.0.0.1  dev.bearberry.com
```

the `httpd-vhosts.conf` file

```
<VirtualHost *>
    DocumentRoot "C:\ig\bearberry/public/"
    ServerName dev.bearberry.com
    SetEnv APPLICATION_ENV "development"
    <Directory "C:\ig\bearberry/public/">
        DirectoryIndex index.php
        AllowOverride All
        #Order Deny,All
        Allow from all
        Order allow,deny
        Require all granted
    </Directory>
</VirtualHost>
```