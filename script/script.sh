# rm -rf tmp
rm -rf resize

# mkdir -p tmp
mkdir -p resize

# cat list_file.txt | sed 's/^/convert frames\//;s/$/ -resize 80%/' | sed 's/$/ tmp\/1_/;' > part1_1.txt
# paste -d "" part1_1.txt list_file.txt |sed "s/$/ \\&/;" | sed "0~20 s/$/\nwait/g;" > part1_final.txt
# echo "wait"  >>  part1_final.txt
# cat part1_final.txt | sh

# part2
# cat list_file.txt | sed 's/^/composite -gravity center -geometry +240-235 tmp\/1_/; s/$/ background\/background.png/' | sed 's/$/ tmp\/2_/' > part2_1.txt
cat list_file.txt | sed 's/^/composite -gravity center -geometry +375-130 frames\//; s/$/ background\/background.png/' | sed 's/$/ resize\//' > part2_1.txt
paste -d "" part2_1.txt list_file.txt  |sed "s/$/ \\&/;" |sed "0~120 s/$/\nwait/g;" > part2_final.txt
echo "wait"  >> part2_final.txt
cat part2_final.txt | sh

# # part3
# cat list_file.txt | sed 's/^/composite -gravity center tmp\/2_/; s/$/ background\/background.png/' | sed 's/$/ tmp\/3_/' > part3_1.txt
# paste -d "" part3_1.txt list_file.txt |sed "s/$/ \\&/;" |sed "0~20 s/$/\nwait/g;"  > part3_final.txt
# echo "wait"  >> part3_final.txt
# cat part3_final.txt | sh

# # part4
# cat list_file.txt | sed 's/^/composite -gravity center tmp\/3_/; s/$/ background\/background.png/' | sed 's/$/ tmp\/4_/' > part4_1.txt
# paste -d "" part4_1.txt list_file.txt |sed "s/$/ \\&/;" |sed "0~20 s/$/\nwait/g;" > part4_final.txt
# echo "wait"  >> part4_final.txt
# cat part4_final.txt | sh

# # part5
# cat list_file.txt | sed 's/^/composite tmp\/4_/; s/$/ background\/background2.png/' | sed 's/$/ resize\//' > part5_1.txt
# paste -d "" part5_1.txt list_file.txt |sed "s/$/ \\&/;" |sed "0~20 s/$/\nwait/g;" > part5_final.txt
# echo "wait"  >>  part5_final.txt
# cat part5_final.txt | sh
