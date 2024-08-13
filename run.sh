#!/bin/bash

# Run the command 5 times with a 20-second pause between executions
for i in {1..100}; do
    echo "Running iteration $i"
    hey -z 12s -c 10 -q 120 -m "POST" -D "./request-body.json" http://localhost:8080
    sleep 1
done

echo "Test completed."
