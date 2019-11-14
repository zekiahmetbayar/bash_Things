#!/bin/bash
##depth=5
#breadth=2

directory=$PWD

#DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

linenum="$(wc -l $directory/meyveler | awk '{ print $1 }')"

echo "Olusturmak istediginiz dizin sayisini giriniz ! "
read dizin_Sayisi

echo "Kac kelime yazdırmak istediğinizi yazınız!"
read random_kelime

if (( $random_kelime>$linenum));then
	echo "istediğiniz kelime sayısı toplam kelimelerden fazla!"
else
	script_Mkdir_Func(){
	declare -i level=$1
	declare -i childNo=$(($2+1))
	declare -i i=0
	declare -i breadth=$(($level+2))

    	if (( $level < $dizin_Sayisi ));then

        	mkdir -p "$childNo" && touch "dosya""$childNo" && shuf -n $random_kelime  $directory/meyveler > "dosya""$childNo"
        	cd "$childNo"
        	let level++


        	while [ $i -lt $breadth ]
        	do
       		script_Mkdir_Func $level $i
       		let i++
        	done
        	cd ..
    	fi
	}
script_Mkdir_Func 0 0

fi
