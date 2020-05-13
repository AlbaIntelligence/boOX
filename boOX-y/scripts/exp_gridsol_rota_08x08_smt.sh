ROBOT_LIST=`cat robots_08x08`
SIZE=8

for ROBOTS in $ROBOT_LIST;
do
    echo 'Solving grid instance '$SIZE'x'$SIZE' with '$ROBOTS' agents ...'
   ../main/rota_solver_boOX --algorithm=smtcbs --timeout=64 '--input-file=grid_'$SIZE'x'$SIZE'_a'$ROBOTS'.mpf' '--output-file=grid_'$SIZE'x'$SIZE'_a'$ROBOTS'.out' > 'rota-smt_grid_'$SIZE'x'$SIZE'_a'$ROBOTS'.txt'
done
