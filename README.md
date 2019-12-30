Zerotier works no more on armada38x (for my ds218j for example)    
I find a solution on their github https://github.com/zerotier/ZeroTierOne/issues/1103    
and just want to share the binary here https://github.com/invince/ZeroTierOne-armada38x-fix/releases.    
You still need install the spk (I'm newbee, don't know how to package the spk) for example https://download.zerotier.com/PRERELEASES/1.4.0pre/synology/zerotier_armada38x-6.1_1.4.0.spk    
then ssh on the synology and replace the binary.    
* it seems the gui doesn't work, but you can still do it in terminal: zerotier-cli join xxx    
