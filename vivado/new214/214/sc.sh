#!/bin/bash

for i in `ls`
do
	#echo $i
	name=proj_$i 
	echo $name
	mkdir $name
	#open_project $name
	#cd $name
	#set_top main
	cp $i $name/$i
	#add_files $i
	#open_solution "solution1"
	#set_part {xc7k160t-fbg484-1}
	#create_clock -period 5 -name default
	#create_clock -period 10ns -name default
	#csynth_design
	#cd ..
done
