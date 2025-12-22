def solve():
    for S in range(1, 10):
        for E in range(10):
            for N in range(10):
                for D in range(10):
                    for M in range(1, 10):
                        for O in range(10):
                            for R in range(10):
                                for Y in range(10):

                                    # All letters must have unique digits
                                    if len({S, E, N, D, M, O, R, Y}) != 8:
                                        continue

                                    SEND = S*1000 + E*100 + N*10 + D
                                    MORE = M*1000 + O*100 + R*10 + E
                                    MONEY = M*10000 + O*1000 + N*100 + E*10 + Y

                                    if SEND + MORE == MONEY:
                                        print("Solution Found")
                                        print("S =", S, "E =", E, "N =", N, "D =", D)
                                        print("M =", M, "O =", O, "R =", R, "Y =", Y)
                                        print(SEND, "+", MORE, "=", MONEY)
                                        return

    print("No solution found")

solve()