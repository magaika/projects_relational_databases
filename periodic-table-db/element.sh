#!/bin/bash
	PSQL="psql -X --username=freecodecamp --dbname=periodic_table --tuples-only -c"
# if argument provided
if [[ $1 ]]
then
  # if argument is a number then fetch element by atomic_number
  if [[ $1 =~ ^[0-9]+$ ]]
  then
    ELEMENT_RESULT=$($PSQL "SELECT * FROM elements INNER JOIN properties USING(atomic_number) INNER JOIN types USING(type_id) WHERE atomic_number = $1")
  else
    # argument is name or symbol
    ELEMENT_RESULT=$($PSQL "SELECT * FROM elements INNER JOIN properties USING(atomic_number) INNER JOIN  types USING(type_id) WHERE name = '$1' OR symbol = '$1' ")
fi
  # if element not found
if [[ -z $ELEMENT_RESULT ]]
  then
    # element does not exist in database
    echo "I could not find that element in the database."
  else
    # show element info
    echo $ELEMENT_RESULT | while read TYPE_ID BAR ATOMIC_NUMBER BAR SYMBOL BAR NAME BAR ATOMIC_MASS BAR MELTING_POINT BAR BOILING_POINT BAR TYPE
    do
      echo -e "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT celsius and a boiling point of $BOILING_POINT celsius."
    done
  fi
else
  echo "Please provide an element as an argument."
fi
