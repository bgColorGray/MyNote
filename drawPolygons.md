```
import numpy as np


def get_random_b1(a, b):
    u1 = round(np.random.random(), 2)
    xb1 = u1 * a / 2
    u2 = round(np.random.random(), 2)
    # 比较根号3/2*a与b的大小
    yb1 = round(u2 * b if np.sqrt(3) / 2 * a <= b else u2 * np.sqrt(3) / 2 * a, 2)
    u3 = round(np.random.random(), 2)
    zb1 = u3 * a / 2
    b1 = np.array([xb1, yb1, zb1])
    print(f"b1.u1 = {u1}, b1.u2 = {u2}, b1.u3 = {u3}")
    return b1


def get_random_b2(a, b, b1):
    yb2 = b - b1[1]
    x_and_z_b2max = np.sqrt(a * a - yb2 * yb2) - a / 2
    u1 = round(np.random.random(), 2)
    xb2 = u1 * x_and_z_b2max * 2 - x_and_z_b2max
    u2 = round(np.random.random(), 2)
    zb2 = u2 * x_and_z_b2max * 2 - x_and_z_b2max
    b2 = np.array([xb2, yb2, zb2])
    print(f"b2.u1 = {u1}, b2.u2 = {u2}")
    return b2


# 函数输入a,b,c
def drawPolygons(a, b, c):
    print(f"a = {a}, b = {b}, c = {c}")
    # 点a1坐标为(-a/2,0,0),点a2坐标为(a/2,0,0)
    a1 = np.array([-a / 2, 0, 0])
    a2 = np.array([a / 2, 0, 0])

    b1 = get_random_b1(a, b)
    # 点b1是否在原点为a1，半径为a的球内
    while np.linalg.norm(b1 - a1) >= a:
        b1 = get_random_b1(a, b)

    b2 = get_random_b2(a, b, b1)
    # 点b2是否在原点为a1和a2，半径为a的球内
    while (np.linalg.norm(b2 - a2) >= a) or (np.linalg.norm(b2 - a1) >= a):
        b2 = get_random_b2(a, b, b1)

    # 打印b1,b2坐标
    print("b1 = ", b1)
    print("b2 = ", b2)
    # b1到b2的距离
    b1b2 = np.linalg.norm(b2 - b1)
    print("b1b2 = ", b1b2)


drawPolygons(100.0, 80.0, 60.0)

```

