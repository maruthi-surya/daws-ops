#!bin/bash

start_time=$($date +%s)

sleep 10

end_time=$($date +%s)

total_time=$(($start_time-$end_time))

echo "total execution time:$total_time"