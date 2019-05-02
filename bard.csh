#!/bin/csh -vx
# show the command before running

set quotation=('More will mean worse\.', \
           'All present and correct\.')

set poem=('He has made his weapons his gods\.',\
      'When his weapons win',\
      'he is defeated himself\.')
while(1)
if (`date +%H:%M:%S` == '17:06:00') then
echo Hello $USER!
echo "I am a bard from Westeros."
echo "Do you want me to sing a song for you?"
echo "Or read a poem?"
echo "Or give you some life advice?"
echo "Song: s; Poem: p; Advice: a"
echo "Please enter your choice:"
set choice=$<
switch($choice)
case s:
    # $PROMPT_STR="SONG"
case p:
    #  while(1)
    #    foreach poem()
    #    $PROMPT_STR="SONG"
    #    end
    #  end
case a:
  @ i = 0
  if($i<2) then
    set PROMPT_STR $poem[$i]
    @ i++;
  else
    @ i = 0
  endif
  breaksw
default:
  set PROMPT_STR "HELLO WORLD"
  breaksw
endsw
setprompt
break
endif
end
