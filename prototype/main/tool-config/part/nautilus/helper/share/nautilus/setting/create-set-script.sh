#!/usr/bin/env bash


echo '#!/usr/bin/env bash' > set.sh
echo >> set.sh

./get.sh | sort -u | awk -F '=====' '{print "gsettings set "$1}' >> set.sh

sed -i 's|\ uint32\ |\ |' set.sh

sed -i 's|\ uint64\ |\ |' set.sh

sed -i 's|\ \[|\ "\[|' set.sh
sed -i 's|\]|\]"|' set.sh


sed -i 's|\ (|\ "(|' set.sh
sed -i 's|)|)"|' set.sh


sed -i 's|\ \@as \[\]|\ \"\[\]\"|' set.sh



chmod 755 set.sh
