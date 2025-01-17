SCENARIO=$1

TIMEOUT=`cat timeout`
PREFIX="room-64-64-8"
SCENARIO_PREFIX=$PREFIX"-random"

ROBOTS_FILE='robots_'$PREFIX
ROBOTS_LIST=`cat $ROBOTS_FILE`

for ROBOTS in $ROBOTS_LIST;
do
    echo 'Solving '$PREFIX' scenario '$SCENARIO' MAPF instance with '$ROBOTS' agents ...'
    ../main/mapf_solver_boOX '--subopt-ratio=1.1' '--timeout='$TIMEOUT  '--input-file='$PREFIX'-'$SCENARIO'_a'$ROBOTS'.mpf' '--algorithm=smtcbs++' '--output-file=solution-110_'$PREFIX'-'$SCENARIO'_a'$ROBOTS'.txt' > 'out-110_'$PREFIX'-'$SCENARIO'_a'$ROBOTS'.txt'
done
