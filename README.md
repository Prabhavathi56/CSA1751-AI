Initialize OPEN ← {start}, CLOSED ← ∅, g(start) ← 0, parent(start) ← NULL
   While OPEN is not empty:
   Select node n from OPEN with minimum f(n) = g(n) + h(n)
   If n is goal, reconstruct path using parent and return path
   Move n from OPEN to CLOSED and expand its neighbors
   Update g(neighbor) and parent if a lower-cost path is found; add to OPEN
