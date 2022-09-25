#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
TRUNCATERESULT=$($PSQL "truncate table teams, games")

# insert table teams
cat games.csv | while IFS="," read year round winner opponent winner_goals opponent_goals
do

  if [[ $winner != winner && $opponent != opponent ]]
  then
    TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$winner'")
    if [[ -z $TEAM_ID ]]
    then
      INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) values ('$winner')")
    fi

    TEAM_ID2=$($PSQL "SELECT team_id FROM teams WHERE name='$opponent'")
    if [[ -z $TEAM_ID2 ]]
    then
      INSERT_TEAM_RESULT2=$($PSQL "INSERT INTO teams(name) values ('$opponent')")
    fi

  fi
done

cat games.csv | while IFS="," read year round winner opponent winner_goals opponent_goals
do

  if [[ $winner != winner ]]
  then

    winner_id=$($PSQL "SELECT team_id FROM teams WHERE name='$winner'")
    opponent_id=$($PSQL "SELECT team_id FROM teams WHERE name='$opponent'")
    INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) values ($year,'$round',$winner_id,$opponent_id,$winner_goals,$opponent_goals)")

  fi
done
