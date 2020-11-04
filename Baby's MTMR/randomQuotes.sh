#!/bin/bash

############################################################
#                                                          #
#                   FORMATTING VARIABLES                   #
#                                                          #
############################################################

# FG_DEFAULT="\e[39m"
# FG_BLACK="\e[30m"
# FG_RED="\e[31m"
# FG_GREEN="\e[32m"
# FG_YELLOW="\e[33m"
# FG_BLUE="\e[34m"
# FG_MAGENTA="\e[35m"
# FG_CYAN="\e[36m"
# FG_L_GRAY="\e[37m"
# FG_D_GRAY="\e[90m"
# FG_L_RED="\e[91m"
# FG_L_GREEN="\e[92m"
# FG_L_YELLOW="\e[93m"
# FG_L_BLUE="\e[94m"
# FG_L_MAGENTA="\e[95m"
# FG_L_CYAN="\e[96m"
# FG_WHITE="\e[97m"# 

# BG_DEFAULT="\e[49m"
# BG_BLACK="\e[40m"
# BG_RED="\e[41m"
# BG_GREEN="\e[42m"
# BG_YELLOW="\e[43m"
# BG_BLUE="\e[44m"
# BG_MAGENTA="\e[45m"
# BG_CYAN="\e[46m"
# BG_L_GRAY="\e[47m"
# BG_D_GRAY="\e[100m"
# BG_L_RED="\e[101m"
# BG_L_GREEN="\e[102m"
# BG_L_YELLOW="\e[103m"
# BG_L_BLUE="\e[104m"
# BG_L_MAGENTA="\e[105m"
# BG_L_CYAN="\e[106m"
# BG_WHITE="\e[107m"# 

# bold="\e[1m"
# reset="\e[0m"

############################################################
#                                                          #
#       SELECT RANDOM FOREGROUND COLOR FOR THE QUOTE       #
#                                                          #
############################################################

## ARRAY OF DESIRABLE FOREGROUND COLORS
# fg[0]="${FG_GREEN}"
# fg[1]="${FG_YELLOW}"
# fg[2]="${FG_MAGENTA}"
# fg[3]="${FG_CYAN}"
# fg[4]="${FG_L_RED}"
# fg[5]="${FG_L_GREEN}"
# fg[6]="${FG_L_YELLOW}"
# fg[7]="${FG_L_BLUE}"
# fg[8]="${FG_L_MAGENTA}"
# fg[9]="${FG_L_CYAN}"

## GENERATE THE RANDOM FOREGROUND COLOR
# color_range=${#fg[@]}            # length of foreground colors array
# let "cid=$RANDOM % $color_range" # select a random integer w/n the array's range
# FG_COLOR="${fg[$cid]}"           # return color with the randomly generated id

## Test a specific color by commenting out the previous line and uncommenting
## the following line
# \e[33m="${fg[9]}"            # return specific color at fg[ID#]



############################################################
#                                                          #
#                  SELECT A RANDOM QUOTE                   #
#                                                          #
############################################################

## ARRAY OF POSSIBLE QUOTES, WITH FORMATTING EMBEDDED
## With the current items.json configuration on a 16" MBP:
## - each line can be up to approximately 70 characters
##   (it's not mono-space, so there's a wide variability)
## - must use a \n to separate the 2 lines
##   (i.e. there's no automatic line-wrapping)

##############   TESTING STRINGS FOR LENGTH   ##############
## To evaluate line length for different configs:
## 1) comment out the `printf "${q[$id]}"` line below
## 2) uncomment the very last printf line below & ensure its
##    index id is set to 999
## 3) uncomment one of the `q[999]` that immediately follows
## 4) save this file
## 5) in your items.json set the `shellScriptTitledButton`'s
##    bordered entry to `true` then save that file
## - go through each of the following `q[999]...` lines,
##   ensuring that only one is uncommented at a time, 
##   save this file, then your items.json file to seee the 
##   results
## - when you have a good idea of the new length, ensure
##   that all the `q[999]...` are commented out, the very
##   last printf command is commented out, the
##   `printf "${q[$id]}"` entry is uncommented, and that
##   you've disabled the border over in items.json
# q[999]="$\e[33m${bold}⓪ ２ ４ ６ ８ ⓵ ２ ４ ６ ８ ⓶ ２ ４ ６ ８ ⓷ ２ ４ ６ ８ ⓸ ２ ４ ６ ８ ⓹ ２ ４ ６ ８ ⓺ ２ ４ ６ ８ ⓻ ２ ４ ６ ８ ⓼ ２ ４ ６ ８ ⓽ ２ ４ ６ ８ \n" # fits up to the 60th char
# q[999]="$\e[33m${bold}A B C D E F G H I J K L M N O P Q R S T U V W X Y Z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z " # fits up to the 89th char
# q[999]="$\e[33m${bold}i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i i" # fits 137 chars
# q[999]="$\e[33m${bold}m m m m m m m m m m m m m m m m m m m m m m m m m m m m m m m m m" # fits 65 chars
# q[0]="$\e[33m${bold}Action is the foundational key to all success. ${reset}~ Picasso"
# q[1]="$\e[33m${bold}The perfect is the enemy of the good.  ${reset}~ Voltaire"
# q[2]="$\e[33m${bold}The only way around is through. ${reset}~ Robert Frost"
# q[3]="$\e[33m${bold}Well done is better than well said.  ${reset}~ Benjamin Franklin"
# q[4]="$\e[33m${bold}The secret of getting things done is to act!  ${reset}~ Dante Alighieri\n"
# q[5]="$\e[33m${bold}Make everything as simple as possible, but not simpler.\n${reset}~ Albert Einstein\n"
# q[6]="$\e[33m${bold}All growth starts at the end of your comfort zone.  ${reset}~ Tony Robbins"
# q[7]="$\e[33m${bold}Now is the time for action. ${reset}~ Morty"
# q[8]="$\e[33m${bold}First say to yourself what you would be;            \nand then do what you have to do.  ${reset}~ Epictetus"
# q[9]="$\e[33m${bold}Don’t explain your philosophy. Embody it.  ${reset}~ Epictetus"
# q[10]="$\e[33m${bold}Mistakes are proof that you're trying."
# q[11]="$\e[33m${bold}By seeking and blundering we learn.  ${reset}~ Johann Wolfgang von Goethe"
# q[12]="$\e[33m${bold}The most dangerous phrase in the language is,\n\"We’ve always done it this way.\"  ${reset}~ Grace Hopper"
# q[13]="$\e[33m${bold}Stay focused!${reset}"
# q[14]="$\e[33m${bold}Code!${reset}"
# q[15]="$\e[33m${bold}Improved productivity means less human sweat, not more.\n${reset}~ Henry Ford\n"
# q[16]="$\e[33m${bold}Working on the right thing is more important than working hard.${reset}"
# q[17]="$\e[33m${bold}A life spent making mistakes is not only more honorable, but more\nuseful than a life spent doing nothing”${reset} ~ George Bernard Shaw"
# q[18]="$\e[33m${bold}What you do every day matters more than what you do once in a while.${reset}"
# q[19]="$\e[33m${bold}Don't wait. The time will never be just right.  ${reset}~ Napoleon Hill"
# q[20]="$\e[33m${bold}The way to get started is to quit talking and begin doing.\n${reset}~ Walt Disney"
# q[21]="$\e[33m${bold}Small deeds done are better than great deeds planned.\n${reset}~ Peter Marshall"
# q[22]=" Believe me you can be way more than who you are"
# q[23]="Actions prove who someone is, word just prove who they want to be"
# q[24]="Hurt in private. Heal in silence. shine in public"
# q[25]="To live in the past is to die in the present"
# q[26]="Someday the pain is worse than the dat that it happened"
# q[27]="Tell a lie once and all truths become questionable"
# q[28]="Trust take years to build"
# q[29]=""
# q[-1]="$\e[33m${bold}To add a new quote: Duplicate this line.  Manually increment its index to 1 more than the last actual quote.  Replace this text with the new quote.\n${reset}~ Replace with attribution"
q[0]="\e[33m${bold}No one is perfect "
q[1]="\e[33m${bold}I don’t ask the question that I don’t want to know the answer too"
q[2]="\e[33m${bold}The heart wants what it wants "
q[3]="\e[33m${bold}What got you here won’t get you there"
q[4]="\e[33m${bold}People linked by destiny will always find each other￼"
q[5]="\e[33m${bold}God is god and you are not"
q[6]="\e[33m${bold}Nothing changes if nothing changes "
q[7]="\e[33m${bold}I cut my hair because you don’t care my heart"
q[8]="\e[33m${bold}You don’t know it’s out there but it’s "
q[9]="\e[33m${bold}Tictoker are tictoking"
q[10]="\e[33m${bold}I will give every effort to train in you, even after some of you have given up on yourselves "
q[11]="\e[33m${bold}Sometimes it’s hard to get the words out"
q[12]="\e[33m${bold}Take it or leave it "
q[13]="\e[33m${bold}You gonna take it or you gonna leave it "
q[14]="\e[33m${bold}I don’t know what’s going on between the two of you but if you hurt her ,you’ll know what I can do "
q[15]="\e[33m${bold}You can’t spell go fuck yourselves without fuck you"
q[16]="\e[33m${bold}“Family”means nobody gets left behind."
q[17]="\e[33m${bold}Hope for the best but plan for the worst."
q[18]="\e[33m${bold}The world is still the same just less in it."
q[19]="\e[33m${bold}I’m not good at words I hope you good at reading mind"
q[20]="\e[33m${bold}The sea remembers its own"
q[21]="\e[33m${bold}Not shy, just doesn’t like it "
q[22]="\e[33m${bold}The truth is you can’t change people by loving them so much harder "
q[23]="\e[33m${bold}It’s not love it’s obsession "
q[24]="\e[33m${bold}Men like us can never been loved "
q[25]="\e[33m${bold}Take whatever you want "
q[26]="\e[33m${bold}Someday I’ll make you mind until I make you mine"
q[27]="\e[33m${bold}If you can’t responsible for your words. Don’t spilt it out"
q[28]="\e[33m${bold}I always trusted code more than people anyway."
q[29]="\e[33m${bold}The point of maximum danger is the point of minimum fear. It’s bliss"
q[30]="\e[33m${bold}Giving is the best communication "
q[31]="\e[33m${bold}It’s not the code. It’s logic "
q[32]="\e[33m${bold}Everyone’s a whore. We just sell different parts of ourselves."
q[33]="\e[33m${bold}You don’t get what you deserve, you get what you take"
q[34]="\e[33m${bold}Hell is empty and all devils are here."
q[35]="\e[33m${bold}Only boring people get bored. "
q[36]="\e[33m${bold}Real love is always worth waiting for."
q[37]="\e[33m${bold}Time undoes even the mightiest of creatures. "
q[38]="\e[33m${bold}Someone once told me that there’s a path for everyone. And my path leads me back to you."
q[39]="\e[33m${bold}“The Bible says, ‘He who loves to sleep and the folding of hands, poverty will set upon you like a thief in the night.’”"
q[40]="\e[33m${bold}If debugging is the process of removing software bugs, then programming must be the process of putting them. "
q[41]="\e[33m${bold}So you’re king of what? King of Nothing?"
q[42]="\e[33m${bold}You know my name doesn’t mean you know my story. "
q[43]="\e[33m${bold}Destiny is all"
q[44]="\e[33m${bold}Fancy shit won’t work without the basic"
q[45]="\e[33m${bold}Learning is a lifelong process "
q[46]="\e[33m${bold}Love requires sacrifice but it’s worth it "
q[47]="\e[33m${bold}Time is what we want most, but what we use worst. -William Penn"
q[48]="\e[33m${bold} I am bound to live by the light that I have."
q[49]="\e[33m${bold}Love yourself first and everything else falls into line"
q[50]="\e[33m${bold}If they need you temporary, ignore them permanently"
q[51]="\e[33m${bold}then maybe your best course would be to tread lightly."
q[52]="\e[33m${bold}If you want justice, you've come to the wrong place."
q[53]="\e[33m${bold}Valar Morghulis"
q[54]="\e[33m${bold}Nobody exists on purpose, nobody belongs anywhere, everybody's gonna die"
q[55]="\e[33m${bold}By order of the peaky blinders"
q[56]="\e[33m${bold}Everybody lies"
q[57]="\e[33m${bold}If one stone is enough to break a glass, one sentence is enough to break a heart and one second is enough to fall in love then why one chapter is not enough to pass an exam "
q[58]="\e[33m${bold}It hurts to stay as much as it hurts to walk away "
q[59]="\e[33m${bold}Mirror  cannot show you what’s inside "
q[60]="\e[33m${bold}Will you crossover to the dark side "
q[61]="\e[33m${bold}life is either a daring adventure or nothing at all "
q[62]="\e[33m${bold}Do you believe in love at first sight or shall I walk pass again?"
q[63]="\e[33m${bold}Some people act like they are trying to help you "
q[64]="\e[33m${bold}You left like l never exist "
q[65]="\e[33m${bold}I wish l could mean more to you "
q[66]="\e[33m${bold}You           Don’t "
q[67]="\e[33m${bold}Matter      Give up"
q[68]="\e[33m${bold}I don’t wanna be smart anymore "
q[69]="\e[33m${bold}I wanna be your boyfriend "
q[70]="\e[33m${bold}Sometime you have to walk away to save yourself "
q[71]="\e[33m${bold}Beautiful things don’t ask for attention"
q[72]="\e[33m${bold}I’ll love you when you’re more like me"
q[73]="\e[33m${bold}If you ever touched my family I would never stop looking "
q[74]="\e[33m${bold}Do the thing for the right reason "
q[75]="\e[33m${bold}All you need is somebody to say “it’s okay to not be okay”"
q[76]="\e[33m${bold}Team work makes the dream work. "
q[77]="\e[33m${bold}There are things that we say to anyone, things that we say to someone, and things that we say to no one."
q[78]="\e[33m${bold}You gonna learn how to stop telling people more than they need to know "
q[79]="\e[33m${bold}perhaps we love Someone who should not love"
q[80]="\e[33m${bold}Quality > Quantity "
q[81]="\e[33m${bold}A life is worth more than all the money in the world "
q[82]="\e[33m${bold}Men always tell their troubles to a barmaid "
q[83]="\e[33m${bold}Sometimes death is a kindness "
q[84]="\e[33m${bold}Assume everyone will betray you 💔, and you will be disappointed."
q[85]="\e[33m${bold}Never be rude to women, otherwise you will be of no value "
q[86]="\e[33m${bold}You can change what you do but you can’t change what you want "
q[87]="\e[33m${bold}Anything is possible when you have the right person to support you "
q[88]="\e[33m${bold}You wanna know what I've learned about life"
q[89]="\e[33m${bold}We fall, we rise, we make mistakes, we live, we learn, we are human, not perfect."
q[90]="\e[33m${bold}People come and go in our life but  fucking memories stay forever "
q[91]="\e[33m${bold}People are like shadows. They disappear when it gets dark"
q[92]="\e[33m${bold}When you stop chasing, they start noticing "
q[93]="\e[33m${bold}Never let your emotions overpowered your intelligence "
q[94]="\e[33m${bold}We all caught feelings for someone we wish we haven’t. "
q[95]="\e[33m${bold}The only people I owe my loyalty to are those who never made me question their"
q[96]="\e[33m${bold}No matter how good you are. You can be replaced "
q[97]="\e[33m${bold}People say they understand, but they really don’t know how it feels "
q[98]="\e[33m${bold}Don’t put me in a position where I gotta show you how cold my heart can get"
q[99]="\e[33m${bold}Privacy is not for sale, and human rights should not be compromised out of fear or greed "
q[100]="\e[33m${bold}Lies travel faster than the truth "
q[101]="\e[33m${bold}Once you Fu*k with me, You always will"
q[102]="\e[33m${bold}If you’re still thinking about it, it’s worth taking the risk. "
q[103]="\e[33m${bold}If someone hates you for no reason, give that motherfucker a reason"
q[104]="\e[33m${bold}I knew she won’t loved me but I still hope "
q[105]="\e[33m${bold}I don’t care what you think about me. Because you don’t exist for me "
q[106]="\e[33m${bold}What I have to do to make people fucking listen to me "
q[107]="\e[33m${bold}You’re not the one I want. You’re the one I need.  "
q[108]="\e[33m${bold}You think you can hurt me?"
q[109]="\e[33m${bold}I’m over-thinker.  I already knew you were going to hurt me"
q[110]="\e[33m${bold}I hate that moment when you hear something that kills 💔 you inside, but you have to act like you're fine."
q[111]="\e[33m${bold}You were my yes but I was only your maybe"
q[112]="\e[33m${bold}Can you see ‘the Fuck’ in my smile"
q[113]="\e[33m${bold}The way how people talk about others. Say a lot about their personality "
q[114]="\e[33m${bold}If you hear a bad story about me, you have to know, there was a time I was good to those people, but they won’t tell you. "
q[115]="\e[33m${bold}I don’t hurt people with a lie, I kill them with the truth "
q[116]="\e[33m${bold}If they care, they’ll show it"
q[117]="\e[33m${bold}My attitude is base on how you treat me"
q[118]="\e[33m${bold}I get really quiet when my mind is too loud "
q[119]="\e[33m${bold}I’m curious who will stay, when I lose everything. "
q[120]="\e[33m${bold}Stop telling people more than they need to know. "
q[121]="\e[33m${bold}It doesn’t matter how hard you try. Some people will eventually going to leave you. No matter what"
q[122]="\e[33m${bold}Second change are rare, people. You ought to take better advantage of them"
q[123]="\e[33m${bold}Have you ever trust the wrong person?"
q[124]="\e[33m${bold}Sometimes it’s better to let the silence do the talking. "
q[125]="\e[33m${bold}Apology accepted, Trust denied. "
q[126]="\e[33m${bold}Life is tough but so am I "
q[127]="\e[33m${bold}Even if your eyes told me the truth, I wouldn’t fucking trust them. "
q[128]="\e[33m${bold}Family before anything. "
q[129]="\e[33m${bold}We didn’t speak but our eyes said everything. "
q[130]="\e[33m${bold}I notice everything. "
q[131]="\e[33m${bold}What if we die? What if we fucking live?"
q[132]="\e[33m${bold}You didn’t lose them. They lost you. "
q[133]="\e[33m${bold}I don’t tack back what I said. If I said I meant it. "
q[134]="\e[33m${bold}Sometimes it feels better not to talk at all. About anything to fucking anyone "
q[135]="\e[33m${bold}Trust take years to build, a second to break and forever to repair "
q[136]="\e[33m${bold}Tell a lie once and all truths become questionable "
q[137]="\e[33m${bold}Some day the pain is worse than the day that it happened. "
q[138]="\e[33m${bold}TO LIVE IN THE PAST is to die in the present. "
q[139]="\e[33m${bold}Hurt in private. Heal in silence. Shine in public. "
q[140]="\e[33m${bold}Actions prove who someone is, word just prove who they want to be"
q[141]="\e[33m${bold}Believe me you can be way more than who you are today"

## GENERATE THE RANDOM QUOTE
quote_range=${#q[@]}            # length of quotes array
let "id=$RANDOM % $quote_range" # select a random integer w/n the array's range
printf "${q[$id]}"              # return random quote

## Test a specific quote by commenting out the previous line and uncommenting
## the following line
# printf "${q[999]}"              # return specific quote at q[ID#]
