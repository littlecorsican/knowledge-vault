# Lecture 0

Bookmark 45:00

## Terminology

### agent 
an entity that perceives its environment and act upon that environment

### state
a configuration of the agent

### actions
returns set of actions that can be executed in state
eg slide tiles up, left, right , or down

### state space
the set of all states reachable from initial state

### goal state
the state where we have reach our final destination

### path costs
numerical cost for taking that path

### transition model
a way to define , if we take this path, what state do we end up with

### goal test
test whether we reach our goal


### node
a data structure 
each node has 
a state, a parent, an action , a path costs

### Approach 1

Start with a frontier node that contains the initial state
then keep on repeating the following
1) if frontier is empty, no solution
2) remove a node from frontier
3) if node contains goal state,  return the solution
4) expand node, add resulting nodes to frontier


### Approach 2

1) Start with a frontier that contais initial state
2) Start with an empty explored set 
3) repeat
    a) If frontier is empty - no solution
    b) remove a node from the frontier
    c) if node contains goal state, return the solution
    d) add the node to the explored set
    e) expand node, add resulting node to the frontier if they areint already in the forntier or the explored set


## Stack 
Last in first out data type

## Depth first search
Explore deepest node first

## Breadth first search
Explore shallowest node first

### depth first search will use a stack data type, but breadth first search will use queue data type , which is a first in first out data type

## greedy best - first search
search algorithm that expands node that think its closest to the goal, the algo doesnt actually know, it guesses using heuristic function h(n)

## heuristic function 

What are Heuristic Functions?
Heuristic functions are strategies or methods that guide the search process in AI algorithms by providing estimates of the most promising path to a solution. They are often used in scenarios where finding an exact solution is computationally infeasible. Instead, heuristics provide a practical approach by narrowing down the search space, leading to faster and more efficient problem-solving.

Heuristic functions transform complex problems into more manageable subproblems by providing estimates that guide the search process. This approach is particularly effective in AI planning, where the goal is to sequence actions that lead to a desired outcome.

https://www.geeksforgeeks.org/heuristic-function-in-ai/