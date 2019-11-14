#!/bin/bash
##depth=5
#breadth=2

echo "Kaç dizin olusturdunuz ? "
read dizin_Sayisi

echo "Degistirmek istediginiz kelimeyi yaziniz : "
read kelime

echo "Yerine koymak istediginiz kelimeyi yaziniz : "
read kelime1
script_Mkdir_Func(){

declare -i level=$1
declare -i childNo=$(($2+1))
declare -i i=0
declare -i breadth=$(($level+2))
    		if (( $level < $dizin_Sayisi ));then
        	sed -i s/$kelime/$kelime1/g "dosya"$childNo
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




#DFS ağacı oluşturma algoritması ile tasarlanmıştır.
