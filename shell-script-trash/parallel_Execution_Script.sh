#!/bin/bash

echo "Task 1" &  # run in the background and start the next process (&)
echo "Task 2" &  # run in the background and start the next process (&)
echo "Task 3" &  # run in the background and start the next process (&)


wait             # this tells the shell to wait until all the background jobs  finishes before continuing  
echo " All tasks completed"

