#!/bin/bash          
cp -rv ${PLAY_HOME}/repository/local/play2-cache snapshots
cp -rv ${PLAY_HOME}/repository/local/play2-crud snapshots

mkdir snapshots/com/pickleproject
cp -Trv $HOME/.m2/repository/com/pickleproject/ snapshots/com/pickleproject
