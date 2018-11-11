ROBOT_LIST=`cat robots_16`
SIZE=16

for ROBOTS in $ROBOT_LIST;
do
    echo 'Solving star instance '$SIZE' with '$ROBOTS' agents ...'
   ./mapf_solver_boOX --algorithm=smtcbs+ --timeout=1024 '--input-file=star_'$SIZE'_a'$ROBOTS'.mpf' '--output-file=mapf-smt_star_'$SIZE'_a'$ROBOTS'.out' > 'mapf-smt_star_'$SIZE'_a'$ROBOTS'.txt'
done