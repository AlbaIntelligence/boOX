ROBOT_LIST=`cat robots_16x16`
SEED_LIST=`cat seeds_10`
SIZE=16

for ROBOTS in $ROBOT_LIST;
do
  for SEED in $SEED_LIST;	
  do            
    echo 'Solving grid instance '$SIZE'x'$SIZE' with '$ROBOTS' agents ...'
  ./perm_solver_boOX --algorithm=smtcbs+ --timeout=1024 '--input-file=grid_'$SIZE'x'$SIZE'_a'$ROBOTS'_'$SEED'.mpf' '--output-file=perm-smt_grid_'$SIZE'x'$SIZE'_a'$ROBOTS'_'$SEED'.out' > 'perm-smt_grid_'$SIZE'x'$SIZE'_a'$ROBOTS'_'$SEED'.txt'
  done
done