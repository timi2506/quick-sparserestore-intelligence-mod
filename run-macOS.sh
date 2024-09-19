clear
echo W 
sleep 0.35
clear 
echo We
sleep 0.35
clear 
echo Wel
sleep 0.35
clear
echo Welc
sleep 0.35
clear 
echo Welco
sleep 0.35
clear 
echo Welcom
sleep 0.35
clear 
echo Welcome
sleep 0.35
clear 
echo Welcome!
sleep 1
clear
echo "Please put your com.apple.mobilegestalt.plist into the MOBILEGESTALT_HERE folder if you havent already
"
sleep 1
open ./MOBILEGESTALT_HERE
read -n 1 -s -r -p "Press any key to continue..."
cd ./MOBILEGESTALT_HERE
clear
echo "
Your MobileGestalt will open in TextEdit in 3 seconds, please add 

		<key>A62OafQ85EJAiiqKn4agtg</key>
		<true/>
		
IMMIDIATELY after: 
		<key>CacheExtra</key>
		<dict>
	
AND change your device model by changing:
		<key>h9jDsbgj7xIVeIQ8S3/X3Q</key>
		<string>youriphonemodel</string>
to:
		<key>h9jDsbgj7xIVeIQ8S3/X3Q</key>
		<string>iPhone16,2</string>"
sleep 3
open -a "TextEdit" com.apple.mobilegestalt.plist
read -n 1 -s -r -p "Press any key to continue..."
clear
cd ..
cd ./nugget
python3 cli_app.py

read -n 1 -s -r -p "Press any key to continue..."