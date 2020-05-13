ROBOT_LIST=`cat robots_16`
SEED_LIST=`cat seeds_10`
SIZE=16

for ROBOTS in $ROBOT_LIST;
do
  for SEED in $SEED_LIST;	
  do
    echo $ROBOTS,$SEED
    grep "machine TIME" 'mapf-smt++_star_'$SIZE'_a'$ROBOTS'_'$SEED'.txt'
    grep "clauses" 'mapf-smt++_star_'$SIZE'_a'$ROBOTS'_'$SEED'.txt'
  done
done
