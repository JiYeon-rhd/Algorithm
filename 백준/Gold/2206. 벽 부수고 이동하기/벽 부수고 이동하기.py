
from collections import deque
def bfs(si, sj):
    # 빈큐, 빈 방문배열, 방향
    q = deque()
    v = [[[0]*2 for _ in range(M)] for _ in range(N)] # 3차원 배열로 만들기
    d = [(0, 1), (-1, 0), (0, -1), (1, 0)]
    # 큐에 첫번째 값, 첫번째 값 방문 체크
    q.append((si, sj, 0))
    v[si][sj][0] = 1

    # 탐색
    while q:
        ci, cj, cw = q.popleft()

        # 정답처리
        if ci == N-1 and cj == M-1:
            return v[ci][cj][cw]

        # 4방향
        for di, dj in d:
            ni, nj = ci+di, cj+dj
            # 범위내, 미방문
            if 0<=ni<N and 0<=nj<M and v[ni][nj][cw] == 0:
                # 벽이 아니거나
                if arr[ni][nj] == 0:
                    q.append((ni, nj, cw))
                    v[ni][nj][cw] = v[ci][cj][cw]+1
                # 첫번째로 마주친 1이면
                elif cw == 0:
                    q.append((ni, nj, cw+1))
                    v[ni][nj][cw+1] = v[ci][cj][cw] + 1
    # 탐색이 끝났지만 못찾으면
    return -1




N, M =  map(int, input().split())
arr = [list(map(int, input())) for _ in range(N)]
si, sj = 0, 0

ans = bfs(si, sj)
print(ans)

