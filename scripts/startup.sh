#!/bin/bash          

commands="screen -S 'Sabnzbd' -d -m sabnzbdplus;
	  screen -S 'Couchpotato' -d -m python /home/rein/Apps/CouchPotatoServer/CouchPotato.py;
	  screen -S 'SickBeard' -d -m python /home/rein/Apps/SickBeard/SickBeard.py;
	  screen -S 'Headphones' -d -m python /home/rein/Apps/Headphones/Headphones.py;
	  screen -S 'Auto-Sub' -d -m python /home/rein/Apps/Auto-sub/AutoSub.py -l --config=/home/rein/Apps/Auto-sub/config.properties"

# Run commands as rein
exec /bin/su - rein -c "$commands"
