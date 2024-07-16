id = input()

for i in range(3):
    for j in range(3):
        if (i, j) == (1,1):
            print(f':{id}:', end='')
        else:
            print(':fan:', end='')
    print()