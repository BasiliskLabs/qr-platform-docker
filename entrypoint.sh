#!/bin/bash
echo $REDIRECT > ./redirects.json
go-wrapper run
