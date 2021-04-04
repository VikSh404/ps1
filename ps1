
PROMPT_COMMAND=__prompt_command


color_test() {
for x in {0..8}; do 
    for i in {30..37}; do 
        for a in {40..47}; do 
            echo -ne "\e[$x;$i;$a""m\\\e[$x;$i;$a""m\e[0;37;40m "
        done
        echo
    done
done
echo ""
}
__prompt_command() {
local EXIT="$?"
PS1=""
local RCol='\[\e[0m\]'
local Red='\[\e[0;31m\]'
local Gre='\[\e[0;32m\]'
local BYel='\[\e[1;33m\]'
local BBlu='\[\e[1;34m\]'
local Pur='\[\e[0;35m\]'
local BRed='\[\e[0;41m\]'
local BGre='\[\e[0;42m\]'
local BBYel='\[\e[1;43m\]'
local BBBlu='\[\e[1;44m\]'
local StartGood='\[\e[7;30;42m\]'
local StartErr='\[\e[7;30;41m\]'
local Start='\[\e[7;37;40m\]'
local End='\[\e[7;30;44m\]'
local EU='\[\e[0;33;42m\]'
local EE='\[\e[0;30;43m\]'
local SU='\[\e[2;30;43m\]'
local BonR='\[\e[8;30;41m\]'
local RonB='\[\e[7;30;41m\]'
local WonR='\[\e[0;37;41m\]'
local ST='\[\e[0;30;42m\]'
local SH='\[\e[0;30;44m\]'
local arrow=$(echo -en '\ue0b0')

    if [ $EXIT != 0 ]; then
  PS1+="${StartErr}$(echo -en '\u2718')${EE}${arrow}${RCol}"     
  PS_NOMBER_OF_ERROR="${BonR}${EXIT}${EE}${RonB}${arrow}${RCol}"
  PS1+="${SU}\u${EU}${arrow}${ST}\t ${SH}\h \W$ ${End}${WonR}${arrow}${RCol}${PS_NOMBER_OF_ERROR} "
    else
	
	
  PS1+="${StartGood}$(echo -en '\u2716')${EE}${arrow}${RCol}"
  PS_NOMBER_OF_ERROR=''
  PS1+="${SU}\u${EU}${arrow}${ST}\t ${SH}\h \W$ ${End}${arrow}${RCol}${PS_NOMBER_OF_ERROR} "
    fi


#> $(printf '\xE2\x98\xA0')$(echo -en '\u25B6')
    
}




