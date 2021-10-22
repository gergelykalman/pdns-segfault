$ORIGIN malicious.com.
$TTL 180
@ IN SOA test.malicious.com. zone-admin.malicious.com. (
        2014080705 ; Serial Number (date YYYYMMDD++)
        86400 ; Refresh (24 hours)
        1800 ; Retry (1/2 hour)
        3600000 ; Expire (42 days)
        3600) ; Minimum (1 hours)

