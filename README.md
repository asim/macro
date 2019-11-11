# Macro

Macro is for micro. Macro is a version of micro with ALL the plugins built in.

## Overview

Many people seem to want a prebuilt version of micro with all the plugins. Or they just don't want to deal with the 
hassle of managing which plugins to add. Macro builds in all the plugins. Anything in go-plugins will be included 
in macro.

Note: Macro as micro compiles to an 86mb binary and has significant memory overhead.

## How it works

Macro creates a `plugins.go` file in the top level repo which is then imported by the binary. This is generated very 
simply by a shell script also in the top directory called `plugins.sh`. The script is run on any rebuild of the 
repository.

## Usage

Macro still returns a `micro` binary

```
go get github.com/micro/macro/cmd/micro
```

For go-micro aka go-macro usage

```
import "github.com/micro/macro/go/micro"
```
