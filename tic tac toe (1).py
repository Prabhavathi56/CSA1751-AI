b = [' '] * 9

def show():
    print(b[0], '|', b[1], '|', b[2])
    print('--+---+--')
    print(b[3], '|', b[4], '|', b[5])
    print('--+---+--')
    print(b[6], '|', b[7], '|', b[8])

def win(p):
    return (b[0]==b[1]==b[2]==p or b[3]==b[4]==b[5]==p or
            b[6]==b[7]==b[8]==p or b[0]==b[3]==b[6]==p or
            b[1]==b[4]==b[7]==p or b[2]==b[5]==b[8]==p or
            b[0]==b[4]==b[8]==p or b[2]==b[4]==b[6]==p)

for i in range(9):
    show()
    p = 'X' if i % 2 == 0 else 'O'
    pos = int(input(f"Player {p} (0-8): "))
    b[pos] = p
    if win(p):
        show()
        print(f"Player {p} wins!")
        break
else:
    show()
    print("Draw!")
