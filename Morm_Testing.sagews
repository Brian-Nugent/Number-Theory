︠eca7dab0-b812-4899-ae20-82bafa4db261s︠
def M(x,y):
    q = (x**2+y**2)/gcd(x,y)
    return q

print M(6,9)
︡8c53a20d-1e1c-4b26-856b-6e2dffa47248︡{"stdout":"39\n"}︡{"done":true}︡︡
︠e1aed314-825d-43c3-b82a-e0e4db4beeccs︠
print M(4,8)

︡090af004-bed6-42d6-989d-e730feacc2e1︡{"stdout":"20\n"}︡{"done":true}︡
︠5c6c5c01-99be-4e53-8902-a7a3c1e97cf0s︠

def Bert(a,b,t):
    m = M(a+1,b)
    end = 1 + m
    n = 1
    done = False
    while (not done):
        l = M(a*n+1,b*n)
        if l in Primes():
            end = n + l
            if n>t:
                done = True
        else:
            if n+l < end:
                end = n+l
        if (n > end):
            return False
        n = n+1
    return True
︡0c29646a-e08e-45ed-8ab2-27376d5086bf︡{"done":true}︡
︠7bb7d64d-4bb9-49eb-92e2-7f4502a4b0e1s︠
print Bert(1,1,10)
︡9faf819a-a7f5-4231-84ca-f7a7ae87cb1d︡{"stdout":"True\n"}︡{"done":true}︡
︠fdf8ada4-3db4-402b-b4b7-fb65b735da29s︠
for a in range(10):
    print a
    for b in range(10):
        if gcd(a,b) == 1:
            if not Bert(a,b,1000000):
                print "FAIL"
︡fd41678c-26c9-4bb5-89e8-24af63fc8c57︡{"stdout":"0\n1"}︡{"stdout":"\n2"}︡{"stdout":"\n3"}︡{"stdout":"\n4"}︡{"stdout":"\n5"}︡{"stdout":"\n6"}︡{"stdout":"\n7"}︡{"stdout":"\n8"}︡{"stdout":"\n9"}︡{"stdout":"\n"}︡{"done":true}︡{"stdout":"\n8"}︡{"stdout":"\n9"}︡{"stdout":"\n"}︡{"done":true}
︠2bf6bbe7-5917-42d0-a408-70261c3f9a29︠









