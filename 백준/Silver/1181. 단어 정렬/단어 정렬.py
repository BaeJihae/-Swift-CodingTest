n = int(input())

word_list = []

for _ in range(n):
    word = input()
    word_list.append((len(word),word))

word_list = list(set(word_list))
word_list.sort()

for i in word_list:
    print(i[1])