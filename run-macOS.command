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
Your MobileGestalt will open in TextEdit in 3 seconds, 
Change ProductType key (look for h9jDsbgj7xIVeIQ8S3/X3Q) to iPhone16,2 (or if you are on an iPad, then iPad16,3)
This spoofs your device into thinking it is an iPhone 15 Pro (or well iPad Pro M4), which both supports Apple Intelligence

Also Add the DeviceSupportsGenerativeModelSystems key (A62OafQ85EJAiiqKn4agtg), and set it to 1 as an integer (if that doesnt work out you can also make it a true boolean)


You need to ADD this to the file. It is very likely this key is not already in your file.

Basically, to do this step, copy and add these 2 lines:

  <key>A62OafQ85EJAiiqKn4agtg</key>
  <integer>1</integer>

Right after this line

<key>CacheExtra</key>
  <dict>

inside your MobileGestalt file.
"
sleep 3
open -a "TextEdit" com.apple.mobilegestalt.plist
read -n 1 -s -r -p "Press any key to continue..."
clear
cd ..
cd ./nugget
python3 cli_app.py

read -n 1 -s -r -p "Press any key to continue..."
cd ..
python3 eligibility.py