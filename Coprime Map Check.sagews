︠93c18d50-e509-4286-bfc0-1456c5dc1401r︠
K.<i> = QuadraticField(-1)
ZI = K.ring_of_integers()
#print ZI(3+2*i).is_prime()

def GGCD(a,b,c,d):
    d = K.ideal(a+b*i, c+d*i).gens_reduced()[0]
    return d

def rel_prime(a,b,c,d):
    return GGCD(a,b,c,d)==1

def E(a,b, list2):
    count = 0
    for ele in list2:
        c,d = ele
        if(rel_prime(a,b,c,d)):
            count = count + 1
    return count

def key(tup):
    x,y = tup
    return y

def coprime_map(list1, list2):
    eList1 = []
    eList2 = []
    for ele in list1:
        a,b = ele
        eList1.append((ele, E(a,b,list2))
    eList1.sort(key)
    WOOHOO = True
    for j in range(len(list1)):
        if j >= eList1[j]:
            WOOHOO = False
    if WOOHOO == False:
        for ele in list2:
            a,b =ele
            eList2.append((ele, E(a,b,list1))
        eList2.sort(key)
        for k in range(len(eList1)):
            j=0
            a,b=eList1[0][0]
            c,d=eList2[0][0]
            while not rel_prime(a,b,c,d):
                j=j+1
                if j >= len(eList1):
                    return False
                c,d=eList2[j][0]
            list.remove(eList1[j])
            list.remove(eList2[k])
return True

list1=[]
list2=[]
for j in range(10):
    for k in range(j):
        list1.append((1+k,2k))
    for k in range(j):
        list2.append((1+k,3k))
    if coprime_map(list1,list2)==False:
        print j
print "donezo"
                          

︡ed34afe1-ec36-4b56-8019-2ee4d099d7bf︡
︠ad21ee32-b4a6-4606-9551-cccb09d91984︠

def key(trip):
    a,b,c = trip
    return c
                             
                          
ls = []
for a in range(1000):
    for b in range(1000):
        count = 0
        for k in range(100):
            if ((1+a*k)**2+(b*k)**2) in Primes():
                count = count +1
        ls.append((a,b,count))
ls.sort(key)
print ls[0] 
︡92926a46-108a-42c0-99a2-033473bc814a︡{"stderr":"Error in lines 12-12\nTraceback (most recent call last):\n  File \"/projects/sage/sage-7.6/local/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 995, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\nTypeError: key() takes exactly 1 argument (2 given)\n"}︡{"done":true}︡
︠d8087e62-45b3-4d56-bdb0-4d6be13f4526s︠

def N(a,b):
   return a^2+b^2                       
for a in range(1000):
    for b in range(1000):
        if (N(1+a,b)%2==0 and N(1+a,b)%3==0 and N(1+a,b)%5==0 and N(1+a,b)%7==0 and N(1+a,b)%13==0 and N(1+a*2,b*2)%5==0 and N(1+a*7,b*7)):
            print a, b
print "donezo"
︡22228a69-7497-41ca-931e-313d7cb6c047︡{"stdout":"83"}︡{"stdout":" 672\n188"}︡{"stdout":" 147\n188 693\n293"}︡{"stdout":" 168\n293 378\n398"}︡{"stdout":" 357\n398 903\n503"}︡{"stdout":" 882\n608"}︡{"stdout":" 777\n713"}︡{"stdout":" 252\n713 798\n818"}︡{"stdout":" 273\n923"}︡{"stdout":" 252\n923 798\n"}︡{"stdout":"donezo\n"}︡{"done":true}︡
︠7c03c4fa-1a42-4ee0-b4c9-707d12fb0b17s︠

for k in range(18):
    print 1+83*k, 672*k                         
︡2b5a83e7-df5e-48bf-ae46-16b9e4c18724︡{"stdout":"1 0\n84 672\n167 1344\n250 2016\n333 2688\n416 3360\n499 4032\n582 4704\n665 5376\n748 6048\n831 6720\n914 7392\n997 8064\n1080 8736\n1163 9408\n1246 10080\n1329 10752\n1412 11424\n"}︡{"done":true}︡
︠14364b29-fce6-4579-a18c-eb90614017e8s︠


for a in range(1,100):
    if ((1+4*a)**2+(42*4)**2)%5==0:
        print a                     
︡24f7f143-b11a-430c-9a0a-50caf3568a13︡{"stdout":"2\n5\n7\n10\n12\n15\n17\n20\n22\n25\n27\n30\n32\n35\n37\n40\n42\n45\n47\n50\n52\n55\n57\n60\n62\n65\n67\n70\n72\n75\n77\n80\n82\n85\n87\n90\n92\n95\n97\n"}︡{"done":true}︡
︠44347723-7872-4847-a394-4d03cab67415s︠

1+20+4*42*i
︡9e45105e-315b-40f3-b421-1d913aafae13︡{"stdout":"168*I + 21\n"}︡{"done":true}︡
︠6dedcd8b-040a-475e-b396-4e0e9a1bbd26s︠
168*2
︡7baff0b8-6503-471a-99da-c21bb2cd9d85︡{"stdout":"336\n"}︡{"done":true}︡
︠fbecf09b-c8af-4452-a55e-3104803c14b3s︠
for n in range(9):
    print 1+(105+105*i)*n, ((1+105*n)**2+(105*n)**2).factor()
                          
︡f32ad3c5-9788-4683-93e3-8c7bb5deb39a︡{"stdout":"1 1\n105*I + 106 113 * 197\n210*I + 211 13 * 17 * 401\n315*I + 316 199081\n420*I + 421 353641\n525*I + 526 552301\n630*I + 631 613 * 1297\n735*I + 736 317 * 3413\n840*I + 841 137 * 10313\n"}︡{"done":true}︡
︠91f187fc-b676-4d07-bbce-a91d2b3462d8s︠
3*5*7
︡1c2a4c18-c357-4775-ab9c-0476386c6cb6︡{"stdout":"105\n"}︡{"done":true}︡
︠35b09cea-b8ef-46c5-8975-ec468584cd41s︠
gcd(88621, 199081)
︡2274c6b1-afbd-4ed9-a3a9-e637c7c915d1︡{"stdout":"1\n"}︡{"done":true}︡
︠f566df4d-dee6-493f-84ec-4a921997a172s︠
gcd(22261,199081)
︡17ed614e-d4c6-4b2b-9fd8-26a9dabcac63︡{"stdout":"1\n"}︡{"done":true}︡
︠237b7e0e-3966-4de9-9e91-c58808fb1dd2︠









