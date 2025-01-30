#!/bin/env bash
set -x
ASSET_FOLDER="./assets"

echo "In case of issues with missing files, probably slither didn't properly read remappings. If this is foundry project, execute `forge remappings > remappings.txt` . This tool will use remappings to inject them properly"
echo "Pick source folder"
SOURCE_FOLDER=$(ls -d */ | fzf --height=40%)
# SOURCE_FOLDER=$(ls -d */ | fzf --height=40% | sed 's/\///')
# FOLDERS_TO_IGNORE=$(ls -d */ | fzf --multi --bind 'ctrl-a:select-all' --print0 --height=40% | tr '\0' ',' | sed 's/,$//')
FOLDERS_TO_IGNORE=$(ls -d */ | grep -v "^$SOURCE_FOLDER\$" | tr '\n' ',' | sed 's/,$//')

slitherPrinter() {
   if [ -f "./remappings.txt" ]; then
      REMAPPINGS=""$(tr '\n' ' ' < remappings.txt | xargs)
      slither ./"$SOURCE_FOLDER" --solc-remaps "$REMAPPINGS" $3 --print "$1"  > "$FILE_NAME" 2>&1
   else
      slither ./"$SOURCE_FOLDER" $3 --print "$1"  > "$FILE_NAME" 2>&1
   fi

   FILE_NAME="$ASSET_FOLDER/$1.$2"
   # dot -Tpng "$FILE_NAME" > "$FILE_NAME".png
}

mkdir -p $ASSET_FOLDER

surya graph $(find "$SOURCE_FOLDER" -type f -name '*.sol') > "$ASSET_FOLDER/surya.dot"
dot -T png "$ASSET_FOLDER/surya.dot" > "$ASSET_FOLDER/surya.dot.png"

slitherPrinter "contract-summary" "txt"
slitherPrinter "data-dependency" "txt" "--ignore-compile"
slitherPrinter "declaration" "txt" "--ignore-compile"
# slitherPrinter "dominator" "txt" "--ignore-compile"
slitherPrinter "function-id" "txt" "--ignore-compile"
slitherPrinter "function-summary" "md" "--ignore-compile"
slitherPrinter "human-summary" "md" "--ignore-compile"
slitherPrinter "inheritance" "txt" "--ignore-compile"
# slitherPrinter "inheritance-graph" "dot" "--ignore-compile"
slitherPrinter "modifiers" "txt" "--ignore-compile"
slitherPrinter "require" "txt" "--ignore-compile"
slitherPrinter "variable-order" "txt" "--ignore-compile"
slitherPrinter "vars-and-auth" "txt" "--ignore-compile"
slitherPrinter "constructor-calls" "txt" "--ignore-compile"

sed '/\[]/d' "$ASSET_FOLDER/modifiers.txt" > "$ASSET_FOLDER/modifiers-only-active.txt"
