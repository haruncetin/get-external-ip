#!/bin/bash
NODE=$(which node)
CURL=$(which curl)
if [ ! -z $NODE ] && [ ! -z $CURL ]; then
	$NODE -pe 'JSON.parse(json=process.argv[1]).ip;' "$($CURL -s ipleak.net?mode=json)"
else
	echo -e "You must satisfy all the following prerequisities to exec this program properly."
	echo -e "`tabs 4`\t1) Nodejs. You can install by \"apt install nodejs\""
	echo -e "`tabs 4`\t2) Curl. You can install by \"apt install curl\""
fi

