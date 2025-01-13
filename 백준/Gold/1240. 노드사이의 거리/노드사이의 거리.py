
def bfs(s, e):
    # q, v, flag 생성
    q = []
    v = [0 for _ in range(N+1)]

    # 삽입
    q.append((s, 0))
    v[s] = 1

    while q:
        c, d = q.pop(0)

        # 종료조건
        if c == e:
            return d

        for n, l in adj[c]:
            if v[n] == 0:
                v[n] = 1
                q.append((n, d+l))
N, M = map(int, input().split())
adj = [[] for _ in range(N+1)]
for i in range(N-1):
    s, e, d = map(int, input().split())
    adj[s].append((e, d))
    adj[e].append((s, d))
for j in range(M):
    S, E = map(int, input().split())
    ans = bfs(S,E)
    print(ans)
