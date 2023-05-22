#!/bin/bash
########################################################################
#Script Name	: chkstat-lister.sh
#Description	: Lists directories and contents given by argument formatted to use chkstat
#Args           : Interactive
#Author       	: Dari Garcia (manofftoday)
#GitHub         : https://github.com/manofftoday
#File           : chkstat-lister.sh
#Description    : Execution workflow
########################################################################
a=(`find ${1}`)
for x in ${a[@]};
do
	echo $x"	"`stat -c %a $x`"	"`stat -c %U $x`":"`stat -c %G $x`
done
