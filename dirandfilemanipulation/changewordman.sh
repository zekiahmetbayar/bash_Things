#!/bin/bash

echo "Degistirmek istediginiz dosya yolunu giriniz :"
read yol
echo "Degistirmek istediginiz kelimeyi giriniz : "
read kelime1
echo "Yerine koymak istediginiz kelimeyi giriniz : "
read kelime2

script_asama2(){
sed -i s/$kelime1/$kelime2/g $yol
}

script_asama2
