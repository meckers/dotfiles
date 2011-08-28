#!/bin/bash

unset MAILCHECK

export LC_CTYPE=en_US.UTF-8

BREW=~/sbin:~/bin
export PATH=${BREW}:${PATH}

export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home

export MAVEN_OPTS="-Dfile.encoding=UTF-8"
export JAVA_TOOL_OPTIONS="-Dfile.encoding=UTF-8 -Dhitta.env=local"

export HISTCONTROL=ignoredups
export EDITOR=vi
export VISUAL=vi

export PYTHONPATH=/Users/chids/Library/Python/3.2/site-packages/
