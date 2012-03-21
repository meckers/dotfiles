#!/bin/bash

echo 'Hej Magnus'
unset MAILCHECK

export LC_CTYPE=en_US.UTF-8

BREW=/usr/local/bin:/usr/local/sbin
JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home/
export ANDROID_HOME=~/dev/android-sdk-macosx
export PATH=${BREW}:/opt/subversion/bin:$PATH:~/dev/play-framework/play-1.2.3:$JAVA_HOME/bin:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home

export ANDROID_HOME=~/dev/android-sdk-macosx

export MAVEN_OPTS="-Dfile.encoding=UTF-8"
export JAVA_TOOL_OPTIONS="-Dfile.encoding=UTF-8 -Dhitta.env=local"

export HISTCONTROL=ignoredups
export EDITOR=vi
export VISUAL=vi

export PATH=/Applications/play-1.2.3:$PATH
export PATH=/usr/local/Cellar/nginx/1.0.5/sbin:$PATH
export M2_HOME=/usr/local/maven
export PATH=${M2_HOME}/bin:${PATH}
echo 'Export commands done'
