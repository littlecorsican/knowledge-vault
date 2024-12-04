# LSMtree

## Features
optimized to write 
used by database like cassandra
reduce the need for random write

## How it works
It doesnt write immediately to database, instead it stores in memory first in a structure called memtable, once in memory reaches a certain size, then it writes to disk as an immutable, sorted file called SSTable. 
Since SSTable is sorted and immutable, flush operation is a sequential write.
There is risk of data lost, but benefit outweights risk.

### Example
how to add - add a = 1
how to update - add a = 3
how to delete - add:tombstone