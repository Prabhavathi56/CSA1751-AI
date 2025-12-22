1. Initialize OPEN ← {start}, CLOSED ← ∅, g(start) ← 0, parent(start) ← NULL
2. While OPEN is not empty:
3.     Select node n from OPEN with minimum f(n) = g(n) + h(n)
4.     If n is goal, reconstruct path using parent and return path
5.     Move n from OPEN to CLOSED and expand its neighbors
6.     Update g(neighbor) and parent if a lower-cost path is found; add to OPEN
