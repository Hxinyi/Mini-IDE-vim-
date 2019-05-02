set autolist=ambiguous #make auto complete available for directory
set complete=enhance   #when auto complete, ignore capiral or lowercase

alias cs '\
if ("`date +%H:%M`" == "21:15") then \
set SAY_HI="Practice makes perfect"; \
else \
set SAY_HI="Hello"; \
endif; \
echo $SAY_HI'

alias setprompt '\
set K="%{\e[0;30m%}";\
set R="%{\e[0;31m%}";\
set G="%{\e[0;32m%}";\
set Y="%{\e[0;33m%}";\
set B="%{\e[0;34m%}";\
set M="%{\e[0;35m%}";\
set C="%{\e[0;36m%}";\
set W="%{\e[0;37m%}";\
set RCB="%{\e[36;41;1m%}";\
set CC="%{\e[0m%}";\
set prompt="$Y<%!>$W %n@%m $B$SAY_HI$C %/\n$CC>> "'
# RCB means: red font, c bg,bold`
# set rmstar=G
cs
setprompt
# nohup source happy_robot.csh 
if (-f ~/.alias) source ~/.alias
