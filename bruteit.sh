#!/bin/bash
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
mag=`tput setaf 5`
cyan=`tput setaf 6`
reset=`tput sgr0`
echo "${mag}"
echo "         __    _____   _    _  _______  _____  _____  _______"
echo "        |  \  |     | | |  | ||__   __||  ___||_   _||__   __|"
echo "        | | | |  __ | | |  | |   | |   | |_     | |     | |"
echo "        |   \ |    _| | |  | |   | |   |  _|    | |     | |"
echo "        | |  ||  |  \ | |__| |   | |   | |___  _| |_    | |"
echo "        |___/ |__|___||______|   |_|   |_____||_____|   |_|${reset}"
echo "         (c) 2016-2017 | https://github.com/cyclo-techtwister"
echo "                  ${green}<<<-${reset} Author: ${yellow}::::Cyclo::::${reset} ${green}->>>${reset}"
echo ""
echo "Enter ${yellow}Passphrase length.${reset} ie. How many characters 4,6,11 ect.."
read varpw
echo ""
clear
echo ""
echo "Enter ${yellow}a word or set of numbers${reset} the Passphrase may contain. ie. 1234, god or yankees1234 ect.."
echo "And for every ${red}letter/number/symbol${reset} of the passphrase ${red}you don't know${reset} use"
echo ""
echo "${yellow}@${reset} will insert lower case characters"
echo ""
echo "${yellow},${reset} will insert upper case characters"
echo ""
echo "${yellow}%${reset} will insert numbers"
echo ""
echo "${yellow}^${reset} will insert symbols"
echo ""
echo "${cyan}Example${reset} of a 12 character Passphrase: ${green}@@@@@yankess${reset} or ${green}yankess^@@,%${reset}"
read varword
echo ""
clear
echo ""
echo "Location of ${yellow}charset.lst${reset} Should be ${green}/usr/share/crunch/charset.lst${reset}"
read varcharset
echo ""
clear
echo ""
echo "Now put ${yellow}lalpha${reset} if all lowercase or ${yellow}mixalpha${reset} for both upper and lower"
echo "${red}Read${reset} ${mag}/usr/share/crunch/charset.lst${reset} and ${mag}man crunch${reset} for more information"
read varcase
echo ""
clear
echo ""
echo "Location of the ${yellow}cap file${reset} ie. hs/whatever.cap"
read varcap
echo ""
clear
echo ""
echo "Enter ${yellow}ESSID${reset} ie. bobsyouruncle-wifi"
read varessid
echo ""
clear
echo ""
echo ""
echo ""
echo ""
echo "${mag}"
echo "         __    _____   _    _  _______  _____  _____  _______"
echo "        |  \  |     | | |  | ||__   __||  ___||_   _||__   __|"
echo "        | | | |  __ | | |  | |   | |   | |_     | |     | |"
echo "        |   \ |    _| | |  | |   | |   |  _|    | |     | |"
echo "        | |  ||  |  \ | |__| |   | |   | |___  _| |_    | |"
echo "        |___/ |__|___||______|   |_|   |_____||_____|   |_|${reset}"
echo "${red}Depending on the complexity/Length of Passphrase this may take awhile${reset}"
echo "Press ${green}Enter${reset} to start ${cyan}Cracking"
read varnone
crunch $varpw $varpw -t $varword -f $varcharset $varcase | aircrack-ng -w - $varcap -e $varessid
