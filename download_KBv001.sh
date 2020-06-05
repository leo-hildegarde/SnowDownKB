#!/bin/sh
for i in $(seq -f "%07g" 1 20000)
do
	url="https://[replaceWithInstanceName].service-now.com/kb_view_customer.do?sysparm_article=KB"$i
	fichero="KB"$i
	wget -q -O $file001 $url
	if grep --quiet "Published" $file001
	then
		if grep --quiet "PROTECTED ARTICLE" $file001
		then
			rm $file001
		else
			echo $file001
		fi
	else
		rm $file001
	fi	
done
