#!/bin/bash

trapall()
{
	
}
startup()
{
  MOVE=FALSE
  declare -a YEAR 
  declare -a MONTH
  declare -a DAY
  FILEDIR="$OPTARG"
  FLIST=$(ls -ltc --time-style=full-iso $FILEDIR | awk '{ print $6 }' | uniq)
  FYEAR=$(echo "$FLIST" | awk -F '-' '{ print $1 }' | uniq)
  FMONTH=$(echo "$FLIST" | awk -F '-' '{ print $2 }' | uniq)
  FDAY=$(echo "$FLIST" | awk -F '-' '{ print $3 }' | uniq)
}

createdir()
{
  for YEAR in ${YEAR[@]}; do
      mkdir -p "$YEAR" 
    for MONTH in ${MONTH[@]}; do
        mkdir -p "${YEAR}/${MONTH}"
      for DAY in ${DAY[@]}; do
          mkdir -p "${YEAR}/${MONTH}/${DAY}"
      done
    done
  done
}

fillarray()
{
  i=0; in=0; int=0
  for YEAR in ${FYEAR}; do
    YEARz[$i]="${YEAR}"
    ((i++))
  done
  for MONTH in ${FMONTH}; do
    MONTHz[$in]="${MONTH}"
    ((in++))
  done
  for DAY in ${FDAY}; do
    DAYz[$int]="${DAY}"
    ((int++))
  done
}

callhelp()
{
	echo "This calls the help function"
	echo "Your options are: "
	echo "-m: which sets move to true"
	echo "-c: which fills the arrays, and creates directories based off arrays"
	echo "and -h, which displays this menu to you!"
}
