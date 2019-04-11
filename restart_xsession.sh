#!/bin/sh

XSESSION="mthome sysuid";
_______________________________________________="-----------------------------------------------";

echo "Restart X session...";

for i in ${XSESSION}
do
	TSH="initctl restart xsession/$i";
	echo ${TSH}; ${TSH};
done

echo "Restart X session finished.";
echo ${_______________________________________________};

exit 0;
