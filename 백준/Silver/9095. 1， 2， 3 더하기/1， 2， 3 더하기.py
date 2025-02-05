T = int(input())
def func(num):
    if num == 1:
        return 1
    elif num == 2:
        return 2
    elif num == 3:
        return 4
    return func(num-1)+func(num-2)+func(num-3)
    
for test_case in range(T):
    num = int(input())
    print(func(num))
 