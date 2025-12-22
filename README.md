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

Algorithm DFS(graph, start, visited)

If VISITED is empty then  
    Create an empty set VISITED  

Add start node to VISITED  
Print start node  

For each adjacent node of start do  
    If node is not in VISITED then  
        Call DFS(graph, node, VISITED)

Algorithm FeedForwardNN(X, W1, b1, W2, b2)

Sigmoid(x):
    return 1 / (1 + e^(−x))

hidden_input  ← X × W1 + b1
hidden_output ← Sigmoid(hidden_input)

final_input   ← hidden_output × W2 + b2
final_output  ← Sigmoid(final_input)

return final_output

Algorithm WaterJugPath(jug1, jug2, target)

Initialize VISITED as empty set
Initialize QUEUE with (0, 0, path = [(0, 0)])

While QUEUE is not empty do
    (a, b, path) ← Dequeue from QUEUE

    If (a, b) is in VISITED then
        Continue
    Add (a, b) to VISITED

    If a = target OR b = target then
        Return path

    Enqueue (a, jug2) with updated path        // Fill jug2
    Enqueue (jug1, b) with updated path        // Fill jug1
    Enqueue (0, b) with updated path           // Empty jug1
    Enqueue (a, 0) with updated path           // Empty jug2

    pour ← min(a, jug2 − b)
    Enqueue (a − pour, b + pour)               // Pour jug1 → jug2

    pour ← min(jug1 − a, b)
    Enqueue (a + pour, b − pour)               // Pour jug2 → jug1

End While

Return NULL

Initialize board b with 9 empty spaces

Function ShowBoard():
    Print b[0] | b[1] | b[2]
    Print --+---+--
    Print b[3] | b[4] | b[5]
    Print --+---+--
    Print b[6] | b[7] | b[8]

Function CheckWin(player):
    Return TRUE if any row, column, or diagonal has all positions equal to player

For i from 0 to 8:
    ShowBoard()
    player ← 'X' if i is even else 'O'
    pos ← Input position from player
    b[pos] ← player
    If CheckWin(player) is TRUE:
        ShowBoard()
        Print "Player player wins!"
        Break loop
Else:
    ShowBoard()
    Print "Draw!"

Algorithm DecisionTree(outlook, humidity)

If outlook = "Sunny" then
    If humidity = "High" then
        Return "No"
    Else
        Return "Yes"

Else if outlook = "Overcast" then
    Return "Yes"

Else if outlook = "Rain" then
    Return "Yes"






