@echo off
ant -Dlibrary=play2-cache -Dversion=0.4.0-SNAPSHOT
ant -Dlibrary=play2-crud -Dversion=0.5.0-SNAPSHOT

mkdir snapshots\com\pickleproject
cp -Trv '%HOME%\.m2\repository\com\pickleproject\' 'snapshots\com\pickleproject'
