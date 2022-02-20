from sys import stdin
input = stdin.readline
MAX  = 1000001

if __name__ == "__main__" : 
    F = [1] * MAX
    G = [0] * MAX
    for i in range(2, MAX) :
        for j in range(i, MAX, i) :
            F[j] += i
    for i in range(1, MAX) :
        G[i] = G[i - 1] + F[i]
    for _ in range(int(input())) :
        print(G[int(input())])
