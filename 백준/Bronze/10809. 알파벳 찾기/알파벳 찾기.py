word = input()

answer = [-1] * 26

for index, data in enumerate(word):
    if answer[ord(data) % 97] == -1:
        answer[ord(data) % 97] = index

for i in answer:
    print(i, end = " ")