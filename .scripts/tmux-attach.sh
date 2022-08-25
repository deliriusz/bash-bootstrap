#/bin/bash

COUNTER=1
for SESSION in $(tmux ls | cut -d: -f1); do
   echo "$COUNTER: $SESSION"
   OPTIONS[COUNTER]="$SESSION"
   ((COUNTER+=1))
done

echo "Choose id of existing sessions to attach to or a name of your new session:"
read USER_OPTION

POSSIBLE_SESSION="${OPTIONS[$USER_OPTION]}"

if [ -z "$POSSIBLE_SESSION" ]; then
   tmux new -s "$USER_OPTION"
else
   tmux attach -t "$POSSIBLE_SESSION"
fi
