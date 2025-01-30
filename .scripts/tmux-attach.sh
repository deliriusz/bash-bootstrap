#/bin/bash

# $1 - session name
function audit_template () {
   #tmux split-window -v 'ipython'
   #tmux split-window -h
   #tmux new-session -d -s "$1"
   #
   # tmux new -s "$1" \; \
   # tmux rename-window -t1 'shell' \; \
   # tmux new-window 'vi' \; \
   # tmux new-window 'shell' \; \
   # tmux new-window 'misc' \; \
   # tmux new-window 'misc2' \; \
   # tmux attach-session -t "$USER_OPTION"



   tmux new -s "$1" \; \
   rename-window -t1 'shell' \; \
   new-window 'vi' \; \
   new-window 'shell' \; \
   new-window 'misc' \; \
   new-window 'misc2' \; \
   attach-session -t "$1"
}

SESSION_TEMPLATES=( audit_template )
SESSION_TEMPLATE_NAMES=( "audit_template" )

# $1 - name
function chooseTemplate () {
   set -x
   COUNTER=1
   echo "Choose template: "
   for TEMPLATE in "${SESSION_TEMPLATE_NAMES[@]}"; do
      echo "$COUNTER: $TEMPLATE"
      ((COUNTER+=1))
   done

   read TEMPLATE_OPTION

   ${SESSION_TEMPLATES[$TEMPLATE_OPTION]} $1
}

COUNTER=1
for SESSION in $(tmux ls | cut -d: -f1); do
   echo "$COUNTER: $SESSION"
   OPTIONS[COUNTER]="$SESSION"
   ((COUNTER+=1))
done

echo "Choose id of existing sessions to attach to or a name of your new session:"
read USER_OPTION

echo "$USER_OPTION"
echo "${OPTIONS[$USER_OPTION]}"

POSSIBLE_SESSION="${OPTIONS[$USER_OPTION]}"

if [ -z "$POSSIBLE_SESSION" ]; then
   # tmux new -d -s "$USER_OPTION"
   # chooseTemplate "$USER_OPTION"
   tmux new -s "$USER_OPTION"
   # tmux attach-session -t "$USER_OPTION"
else
   tmux attach -t "$POSSIBLE_SESSION"
fi
