/usr/pgsql-12/bin/pg_basebackup -h 10.5.46.236 -p 6432 -U replica -W --format=tar --progress --verbose --wal-method=fetch --checkpoint=fast -D - | nice -n19 xz -6 --threads=0 - > transport_$date_fmt-mt.tar.xz

