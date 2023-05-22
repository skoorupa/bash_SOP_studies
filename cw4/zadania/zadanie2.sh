#!/bin/bash -x
#for el in ls
#do
	ls -l | egrep '^d+(.doc|.txt| [a-z]+)$'
#done
