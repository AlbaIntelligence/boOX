ROBOT_LIST=`cat robots_16`
SEED_LIST=`cat seeds_10`
SIZE=16
TIMEOUT=`cat timeout`

for ROBOTS in $ROBOT_LIST;
do
  for SEED in $SEED_LIST;	
  do            
    echo 'Solving star instance '$SIZE' with '$ROBOTS' agents ...'
    ../main/swap_solver_boOX --algorithm=smtcbs++ '--timeout='$TIMEOUT '--input-file=star_'$SIZE'_a'$ROBOTS'_'$SEED'.mpf' '--output-file=swap-smt++_star_'$SIZE'_a'$ROBOTS'_'$SEED'.out' > 'swap-smt++_star_'$SIZE'_a'$ROBOTS'_'$SEED'.txt'
  done
done
