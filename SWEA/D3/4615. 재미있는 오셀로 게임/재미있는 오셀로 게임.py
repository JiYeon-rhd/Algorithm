

T = int(input())

for test_case in range(T):
    N, M = map(int, input().split())
    arr = [list(map(int, input().split())) for _ in range(M)]
    ans = [[0] * N for _ in range(N)]
    m = N // 2
    ans[m - 1][m - 1] = ans[m][m] = 2  # 흑 = 1, 백 = 2
    ans[m - 1][m] = ans[m][m - 1] = 1

    di = [-1, -1, -1, 0, 1, 1, 1, 0]
    dj = [-1, 0, 1, 1, 1, 0, -1, -1]

    for i in range(M):
        si, sj, c = arr[i]  # x, y, 색상
        ans[si - 1][sj - 1] = c  # 돌 놓기

        # 8방향으로 뻗어나가기
        for d in range(8): ##### 8방향 튜플로 만들어서 직접 넣거나, 이렇게 배열로 만들어서 넣기
            lst = [] # 후보들 저장할 리스트 ##### 초기화 위치 잘 체크하기
            for mul in range(1, N):  # 뻗어나가는 거리가 최대 N까지
                ci, cj = (si - 1) + di[d] * mul, (sj - 1) + dj[d] * mul ##### 배열은 -1, 아니면 처음부터 배열을 1~ N+1로 만들던지
                # 범위내
                if 0 <= ci < N and 0 <= cj < N:
                    # 0이면 끝
                    if ans[ci][cj] == 0:
                        break
                    elif ans[ci][cj] != c:  # 다른 색상의 돌이라면
                        lst.append((ci, cj))
                    else:  # 같은 경우라면
                        # 리스트에 있는 돌 다 뒤집고
                        for i in range(len(lst)):
                            ni, nj = lst[i]
                            ans[ni][nj] = c # 색상 바꾸기
                        break

                # 범위밖
                else:
                    break

    bcnt = wcnt = 0
    for temp in ans:
        bcnt += temp.count(1) ##### count는 리스트에서만 셀 수 있음
        wcnt += temp.count(2)

    print(f"#{test_case+1} {bcnt} {wcnt}")

