#!/bin/bash

# This generates the plugins.go file

DIR=`pwd`

# enable go modules
export GOMODULE111=on

# download the plugins
#go get -d github.com/micro/go-plugins

# go to the dir
cd $GOPATH/src/github.com/micro/go-plugins

# echo import
echo package macro
echo
echo "import ("

# find all the plugins
find . -type d | grep -v .git | while read dir; do 
	if ! $(ls $dir | egrep -q -E .*\\.go); then
		continue
	fi

	MAIN=false

	ls $dir | egrep -E .*\\.go | { while read file; do
		if $(egrep -q "package main" $dir/$file); then
			MAIN=true
			break
		fi
	done

	if [ $MAIN == true ]; then
		continue
	fi
 
	plugin=`echo $dir | sed 's@^\.@github.com/micro/go-plugins@g'`;
	echo -e "\t_ \"$plugin\""

	}
done

# final close
echo ")"
