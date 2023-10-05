︠8ae54324-8eda-4300-97af-f9826fc78fb6s︠

def AKS_alg(n):
    if is_power(n):
        return False
    r = find_r(n)
    for i in range(1, r+1):
        if gcd(i,n) > 1:
            if gcd(i,n) < n:
                return False
    if r >= n:
        return True

    if is_comp(r,n):
        return False
    return True


def order(r,n):
    R = IntegerModRing(r)
    if not gcd(r,n)==1:
        return 0

    a = R(n)
    for i in range(1,r+1):
        if a==1:
            return i
        a = a*R(n)

    return 0

def is_int(a):
    if a - floor(a) == 0:
        return True
    return False

def is_power(n):
    for i in range(2, ceil(log(n,2))+1):
        if is_int(n^(1/i)):
            return True
    return False

def find_r(n):
    k = log(n,2)^2
    for r in range(1, ceil(log(n,2)^5)):
        if order(r,n) > k:
            return r

    return 0

def is_comp(r,n):
    R = IntegerModRing(n)
    P.<x> = PolynomialRing(R)
    P.<xx> = P.quo([x^r - 1])

    m = ceil(euler_phi(r)^(1/2)*log(n,2))
    for a in range(1, m):
        f = (x+a)^n
        g = x^n + a
        if not P(f) == P(g):
            return True

    return False
︡33b2845c-5428-40c2-a955-8760fa2d4309︡{"done":true}︡
︠37e8f2db-b40e-4b8b-9d9f-6efe480c41f8s︠


AKS_alg(7)
︡a47ca976-6312-43f2-943d-58770c35079d︡{"stdout":"True\n"}︡{"done":true}︡
︠6ba7ea16-32ae-4807-b1e4-9238a9d5f370︠

︡b31fb15d-e249-4f7c-b25a-c3f938a039ce︡
︠e34520c7-1f31-465b-b7f6-95c758aa13d7s︠
F = Zmod(17389)
E = EllipticCurve(F,[231,473])

P=E([11259,11278])
H=P

V=E([11017,14637])

365*P


︡5950564e-bdcc-4e46-8318-aa037ed2f348︡{"stdout":"(3923 : 12121 : 1)\n"}︡{"done":true}︡
︠e65c2ff0-e14d-4e07-bdf5-22cdc41a3c6ds︠

Mod((516+470*1281)*(365)^(-1),1321)
︡48183169-01f6-4f74-a0d8-73cd8fd22c8b︡{"stdout":"1213\n"}︡{"done":true}︡
︠f941054e-ea8d-4c93-a735-8af46de1d58a︠









