from collections import deque

def water_jug_path(jug1, jug2, target):
    visited = set()
    queue = deque()
    queue.append((0, 0, [(0, 0)]))   # (jug1, jug2, path)

    while queue:
        a, b, path = queue.popleft()

        if (a, b) in visited:
            continue
        visited.add((a, b))

        if a == target or b == target:
            return path

        # Fill jug2
        queue.append((a, jug2, path + [(a, jug2)]))

        # Fill jug1
        queue.append((jug1, b, path + [(jug1, b)]))

        # Empty jug1
        queue.append((0, b, path + [(0, b)]))

        # Empty jug2
        queue.append((a, 0, path + [(a, 0)]))

        # Pour jug1 → jug2
        pour = min(a, jug2 - b)
        queue.append((a - pour, b + pour, path + [(a - pour, b + pour)]))

        # Pour jug2 → jug1
        pour = min(jug1 - a, b)
        queue.append((a + pour, b - pour, path + [(a + pour, b - pour)]))

    return None


# Given values
jug1 = 4
jug2 = 3
target = 2

result = water_jug_path(jug1, jug2, target)

print("Path of states by jugs followed is :")
for state in result:
    print(state[0], ",", state[1])