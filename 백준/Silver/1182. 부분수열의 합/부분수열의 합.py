
def dfs(n, sum, cnt):
    global ans
    # 종료 조건
    if n == N:
        if sum == S and cnt > 0:
            ans += 1
        return

    dfs(n+1, sum+lst[n], cnt + 1)
    dfs(n+1, sum, cnt)

N, S = map(int, input().split())
lst = list(map(int, input().split()))

ans = 0
dfs(0, 0, 0) # cnt가 꼭 있어야함! 크기가 양수인 부분수열이기 때문!!!!!!!(부분수열에 값이 없으면 안됨)
print(ans)