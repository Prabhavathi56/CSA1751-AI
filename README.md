Initialize OPEN ← {start}, CLOSED ← ∅, g(start) ← 0, parent(start) ← NULL
   While OPEN is not empty:
   Select node n from OPEN with minimum f(n) = g(n) + h(n)
   If n is goal, reconstruct path using parent and return path
   Move n from OPEN to CLOSED and expand its neighbors
   Update g(neighbor) and parent if a lower-cost path is found; add to OPEN
   
Algorithm AlphaBeta(depth, nodeIndex, maximizingPlayer, values, alpha, beta)

 If depth = maximum depth:
       return values[nodeIndex]

 If maximizingPlayer = TRUE:
       best ← −∞
       for each child of node:
           value ← AlphaBeta(next depth, child, FALSE, values, alpha, beta)
           best ← max(best, value)
           alpha ← max(alpha, best)
           if beta ≤ alpha:
               break   // Beta pruning
       return best

 Else (minimizingPlayer):
       best ← +∞
       for each child of node:
           value ← AlphaBeta(next depth, child, TRUE, values, alpha, beta)
           best ← min(best, value)
           beta ← min(beta, best)
           if beta ≤ alpha:
               break   // Alpha pruning
       return best

 Algorithm BFS(graph, start)

Create an empty set VISITED  
Create a queue QUEUE and enqueue start node  
Add start node to VISITED  

While QUEUE is not empty do  
    Dequeue a node and print it  
    For each adjacent node of the dequeued node do  
        If the node is not in VISITED then  
            Add the node to VISITED  
            Enqueue the node into QUEUE  
End While

