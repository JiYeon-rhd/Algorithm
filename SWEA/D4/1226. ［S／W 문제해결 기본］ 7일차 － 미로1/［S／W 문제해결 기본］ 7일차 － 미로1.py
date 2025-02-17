
T =  10

from collections import deque
def bfs(si, sj, ei, ej):
    q = []
    check_arr = [[0] * 16 for _ in range(16)]
    check_arr[si][sj] = 1 # 방문 체크
    q.append((si, sj))
    di = [-1, 0, 1, 0]
    dj = [0, 1, 0, -1]

    while q:
        ci, cj = q.pop(0)

        # 정답처리
        if ci == ei and cj == ej:
            return 1 # 함수가 끝나느 거임

        # 4 방향 탐색
        for i in range(4):
            ni = ci + di[i]
            nj = cj + dj[i]
            # 범위내, 미방문, 길(0)이거나 혹은 도착점이면!!!!!! -> 벽이 아니면
            if 0 <= ni < 16 and 0 <= nj < 16:
                if check_arr[ni][nj] == 0 and arr[ni][nj] != 1:
                    q.append((ni, nj))
                    check_arr[ni][nj] = 1

    # while 문이 끝나도 길이 없으면
    return 0





for test_case in range(T):
    case_num = int(input())
    arr = [list(map(int, input())) for _ in range(16)]
    si = sj = ei = ej = 0
    for i in range(16):
        for j in range(16):
            if arr[i][j] == 2: # 시작점 좌표
                si = i
                sj = j
            if arr[i][j] == 3: # 도착점 좌표
                ei = i
                ej = j

    ans= bfs(si, sj, ei, ej)

    print("#{0} {1}".format(test_case+1, ans))

