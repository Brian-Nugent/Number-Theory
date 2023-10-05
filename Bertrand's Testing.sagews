︠fee3cae8-a42a-42e3-a6a2-e84e54387159︠
K.<i> = QuadraticField(-1)
ZI = K.ring_of_integers()

def Norm(x,y):
    return x^2+y^2

def bertrand(a,b,x):
    start = 1
    end = Norm((1+a),b)
    for j in range(x):
        done = False
        k = start
        while(not done):
            k = k + 1
            if Norm((1+a*k),b*k) in Primes():
                start = k
                end = k + Norm((1+a*k),b*k)
                done = True
            if k >= end:
                return "FAILURE"
    return (a*k+1,b*k)
print(bertrand(100947,179949,1000))
print("donez")
︡821c7fd8-02a2-4490-890c-b1663e2dbe1c︡{"stdout":"(937595737, 1671366312)\n"}︡{"stdout":"donez\n"}︡{"done":true}︡
︠d5537d1b-69ed-4a5d-be69-34dfcc58abbas︠
def fastBertrand(a,b):
    end = 1
    start = Norm((1+a),b)
    tooBig = False
    while(not tooBig):
        done = False
        k = start
        while(not done):
            k = k - 1
            if Norm((1+a*k),b*k) in Primes():
                end = k
                start = k + Norm((1+a*k),b*k)
                done = True
            if k < end:
                return "FAILURE"
        if end > 10**1:
            tooBig = True

    return k
count = 0
for i in range(1,300):
    for j in range(1,300):
        if gcd(i,j) == 1:
            count = count + 1
            if fastBertrand(i,j) == "FAILURE":
                print "BOOOO"
print count
print("donez")
︡3037228f-33fa-414c-8542-7d816fc5fdba︡{"stdout":"54635\n"}︡{"stdout":"donez\n"}︡{"done":true}︡
︠c8f02346-a52a-4ec1-8b93-e96b772ba45c︠


def num_primes(a,b,n):
    count = 0
    list = []
    list.append(["10^x", "Number of primes:"])
    for x in range(n):
        for j in range(10**x-1,10**(x+1)):
            if Norm((1+a*j),b*j) in Primes():
                count = count + 1
        list.append([x+1,count])

    print table(list)

num_primes(100947,179949,5)

︡89d61c74-d18c-4061-bacf-30b172fff14a︡{"stdout":"  10^x   Number of primes:\n  1      2\n  2      17\n  3      128\n  4      1085\n  5      9739"}︡{"stdout":"\n"}︡{"done":true}︡
︠1b30c9d0-e930-49fb-9643-5e6df6b22925s︠
print bertrand(2,9,10)
︡76e67e98-f730-4397-8a8d-9c5af4823848︡{"stdout":"(241, 1080)\n"}︡{"done":true}︡
︠eed89570-6cf9-431c-94ae-9b8eb71db5adso︠


for a in range(1,100):
    for b in range(1,100):
        if gcd(a,b)==1:
            if bertrand(a,b,1000) == "FAILURE":
                print a, b, "booooo"
    print a, "% done"
print "done"
︡418047b5-8fe4-48c1-ac4f-1be2f7fb9abf︡{"stdout":"1"}︡{"stdout":" % done\n2"}︡{"stdout":" % done\n3"}︡{"stdout":" % done\n4"}︡{"stdout":" % done\n5"}︡{"stdout":" % done\n6"}︡{"stdout":" % done\n7"}︡{"stdout":" % done\n8"}︡{"stdout":" % done\n9"}︡{"stdout":" % done\n10"}︡{"stdout":" % done\n11"}︡{"stdout":" % done\n12"}︡{"stdout":" % done\n13"}︡{"stdout":" % done\n14"}︡{"stdout":" % done\n15"}︡{"stdout":" % done\n16"}︡{"stdout":" % done\n17"}︡{"stdout":" % done\n18"}︡{"stdout":" % done\n19"}︡{"stdout":" % done\n20"}︡{"stdout":" % done\n21"}︡{"stdout":" % done\n22"}︡{"stdout":" % done\n23"}︡{"stdout":" % done\n24"}︡{"stdout":" % done\n25"}︡{"stdout":" % done\n26"}︡{"stdout":" % done\n27"}︡{"stdout":" % done\n28"}︡{"stdout":" % done\n29"}︡{"stdout":" % done\n30"}︡{"stdout":" % done\n31"}︡{"stdout":" % done\n32"}︡{"stdout":" % done\n33"}︡{"stdout":" % done\n34"}︡{"stdout":" % done\n35"}︡{"stdout":" % done\n36"}︡{"stdout":" % done\n37"}︡{"stdout":" % done\n38"}︡{"stdout":" % done\n39"}︡{"stdout":" % done\n40"}︡{"stdout":" % done\n41"}︡{"stdout":" % done\n42"}︡{"stdout":" % done\n43"}︡{"stdout":" % done\n44"}︡{"stdout":" % done\n45"}︡{"stdout":" % done\n46"}︡{"stdout":" % done\n47"}︡{"stdout":" % done\n48"}︡{"stdout":" % done\n49"}︡{"stdout":" % done\n50"}︡{"stdout":" % done\n51"}︡{"stdout":" % done\n52"}︡{"stdout":" % done\n53"}︡{"stdout":" % done\n54"}︡{"stdout":" % done\n55"}︡{"stdout":" % done\n56"}︡{"stdout":" % done\n57"}︡{"stdout":" % done\n58"}︡{"stdout":" % done\n59"}︡{"stdout":" % done\n60"}︡{"stdout":" % done\n61"}︡{"stdout":" % done\n62"}︡{"stdout":" % done\n63"}︡{"stdout":" % done\n64"}︡{"stdout":" % done\n65"}︡{"stdout":" % done\n66"}︡{"stdout":" % done\n67"}︡{"stdout":" % done\n68"}︡{"stdout":" % done\n69"}︡{"stdout":" % done\n70"}︡{"stdout":" % done\n71"}︡{"stdout":" % done\n72"}︡{"stdout":" % done\n73"}︡{"stdout":" % done\n74"}︡{"stdout":" % done\n75"}︡{"stdout":" % done\n76"}︡{"stdout":" % done\n77"}︡{"stdout":" % done\n78"}︡{"stdout":" % done\n79"}︡{"stdout":" % done\n80"}︡{"stdout":" % done\n81"}︡{"stdout":" % done\n82"}︡{"stdout":" % done\n83"}︡{"stdout":" % done\n84"}︡{"stdout":" % done\n85"}︡{"stdout":" % done\n86"}︡{"stdout":" % done\n87"}︡{"stdout":" % done\n88"}︡{"stdout":" % done\n89"}︡{"stdout":" % done\n90"}︡{"stdout":" % done\n91"}︡{"stdout":" % done\n92"}︡{"stdout":" % done\n93"}︡{"stdout":" % done\n94"}︡{"stdout":" % done\n95"}︡{"stdout":" % done\n96"}︡{"stdout":" % done\n97"}︡{"stdout":" % done\n98"}︡{"stdout":" % done\n98"}︡{"stdout":" % done\n99"}︡{"stdout":" % done\n"}︡{"stdout":"done\n"}︡{"done":true}
︠5bf2af3e-ab15-44ce-9ee1-335349f2867do︠


for a in range(1,10):
    for b in range(1,10):
        print a,b
        num_primes(a,b)
︡d4dacf3c-46e8-4a15-ae0d-5055b12b322b︡{"stdout":"1 1\n  10^x   Number of primes:\n  1      6\n  2      36\n  3      226\n  4      1647\n  5      12708"}︡{"stdout":"\n1 2\n  10^x   Number of primes:\n  1      3\n  2      22\n  3      145\n  4      1042\n  5      8156"}︡{"stdout":"\n1 3\n  10^x   Number of primes:\n  1      4\n  2      25\n  3      180\n  4      1308\n  5      10513"}︡{"stdout":"\n1 4\n  10^x   Number of primes:\n  1      2\n  2      18\n  3      116\n  4      801\n  5      6227"}︡{"stdout":"\n1 5\n  10^x   Number of primes:\n  1      5\n  2      37\n  3      262\n  4      2095\n  5      16635"}︡{"stdout":"\n1 6\n  10^x   Number of primes:\n  1      1\n  2      10\n  3      63\n  4      491\n  5      3826"}︡{"stdout":"\n1 7\n  10^x   Number of primes:\n  1      4\n  2      28\n  3      207\n  4      1563\n  5      12633"}︡{"stdout":"\n1 8\n  10^x   Number of primes:\n  1      2\n  2      19\n  3      134\n  4      987\n  5      8007"}︡{"stdout":"\n1 9\n  10^x   Number of primes:\n  1      2\n  2      14\n  3      125\n  4      916\n  5      7445"}︡{"stdout":"\n2 1\n  10^x   Number of primes:\n  1      3\n  2      20\n  3      147\n  4      1026\n  5      8060"}︡{"stdout":"\n2 2\n  10^x   Number of primes:\n  1      4\n  2      30\n  3      211\n  4      1549\n  5      11992"}︡{"stdout":"\n2 3\n  10^x   Number of primes:\n  1      1\n  2      12\n  3      77\n  4      539\n  5      4258"}︡{"stdout":"\n2 4\n  10^x   Number of primes:\n  1      6\n  2      36\n  3      252\n  4      1890\n  5      15290"}︡{"stdout":"\n2 5\n  10^x   Number of primes:\n  1      2\n  2      14\n  3      122\n  4      978\n  5      7879"}︡{"stdout":"\n2 6\n  10^x   Number of primes:\n  1      3\n  2      20\n  3      149\n  4      1188\n  5      9960"}︡{"stdout":"\n2 7\n  10^x   Number of primes:\n  1      1\n  2      12\n  3      69\n  4      601\n  5      4819"}︡{"stdout":"\n2 8\n  10^x   Number of primes:\n  1      5\n  2      30\n  3      202\n  4      1457\n  5      11695"}︡{"stdout":"\n2 9\n  10^x   Number of primes:\n  1      1\n  2      7\n  3      88\n  4      636\n  5      5166"}︡{"stdout":"\n3 1\n  10^x   Number of primes:\n  1      5\n  2      38\n  3      265\n  4      1986\n  5      15793"}︡{"stdout":"\n3 2\n  10^x   Number of primes:\n  1      2\n  2      15\n  3      99\n  4      809\n  5      6410"}︡{"stdout":"\n3 3\n  10^x   Number of primes:\n  1      3\n  2      29\n  3      194\n  4      1435\n  5      11630"}︡{"stdout":"\n3 4\n  10^x   Number of primes:\n  1      2\n  2      14\n  3      118\n  4      919\n  5      7625"}︡{"stdout":"\n3 5\n  10^x   Number of primes:\n  1      5\n  2      37\n  3      248\n  4      1937\n  5      15986"}︡{"stdout":"\n3 6\n  10^x   Number of primes:\n  1      2\n  2      19\n  3      118\n  4      931\n  5      7312"}︡{"stdout":"\n3 7\n  10^x   Number of primes:\n  1      4\n  2      21\n  3      158\n  4      1207\n  5      9832"}︡{"stdout":"\n3 8\n  10^x   Number of primes:\n  1      2\n  2      12\n  3      86\n  4      684\n  5      5545"}︡{"stdout":"\n3 9\n  10^x   Number of primes:\n  1      4\n  2      36\n  3      217\n  4      1773\n  5      14514"}︡{"stdout":"\n4 1\n  10^x   Number of primes:\n  1      2\n  2      17\n  3      107\n  4      764\n  5      6224"}︡{"stdout":"\n4 2\n  10^x   Number of primes:\n  1      6\n  2      37\n  3      265\n  4      1905\n  5      15218"}︡{"stdout":"\n4 3\n  10^x   Number of primes:\n  1      1\n  2      14\n  3      85\n  4      591\n  5      5042"}︡{"stdout":"\n4 4\n  10^x   Number of primes:\n  1      4\n  2      26\n  3      180\n  4      1412\n  5      11405"}︡{"stdout":"\n4 5\n  10^x   Number of primes:\n  1      2\n  2      15\n  3      119\n  4      923\n  5      7655"}︡{"stdout":"\n4 6\n  10^x   Number of primes:\n  1      1\n  2      18\n  3      132\n  4      976\n  5      7986"}︡{"stdout":"\n4 7\n  10^x   Number of primes:\n  1      2\n  2      16\n  3      112\n  4      840\n  5      6828"}︡{"stdout":"\n4 8\n  10^x   Number of primes:\n  1      3\n  2      35\n  3      225\n  4      1759\n  5      14427"}︡{"stdout":"\n4 9\n  10^x   Number of primes:\n  1      1\n  2      9\n  3      50\n  4      452\n  5      3606"}︡{"stdout":"\n5 1\n  10^x   Number of primes:\n  1      4\n  2      26\n  3      196\n  4      1556\n  5      12450"}︡{"stdout":"\n5 2\n  10^x   Number of primes:\n  1      1\n  2      13\n  3      100\n  4      729\n  5      5968"}︡{"stdout":"\n5 3\n  10^x   Number of primes:\n  1      2\n  2      19\n  3      110\n  4      1007\n  5      8000"}︡{"stdout":"\n5 4\n  10^x   Number of primes:\n  1      0\n  2      14\n  3      97\n  4      712\n  5      5698"}︡{"stdout":"\n5 5\n  10^x   Number of primes:\n  1      4\n  2      41\n  3      305\n  4      2284\n  5      18580"}︡{"stdout":"\n5 6\n  10^x   Number of primes:\n  1      0\n  2      7\n  3      67\n  4      443\n  5      3741"}︡{"stdout":"\n5 7\n  10^x   Number of primes:\n  1      4\n  2      23\n  3      163\n  4      1194\n  5      9677"}︡{"stdout":"\n5 8\n  10^x   Number of primes:\n  1      0\n  2      11\n  3      76\n  4      659\n  5      5481"}︡{"stdout":"\n5 9\n  10^x   Number of primes:\n  1      2\n  2      19\n  3      119\n  4      889\n  5      7343"}︡{"stdout":"\n6 1\n  10^x   Number of primes:\n  1      2\n  2      11\n  3      92\n  4      734\n  5      5790"}︡{"stdout":"\n6 2\n  10^x   Number of primes:\n  1      4\n  2      27\n  3      253\n  4      1879\n  5      14956"}︡{"stdout":"\n6 3\n  10^x   Number of primes:\n  1      2\n  2      16\n  3      129\n  4      914\n  5      7328"}︡{"stdout":"\n6 4\n  10^x   Number of primes:\n  1      4\n  2      24\n  3      191\n  4      1459\n  5      12085"}︡{"stdout":"\n6 5\n  10^x   Number of primes:\n  1      3\n  2      20\n  3      117\n  4      918\n  5      7535"}︡{"stdout":"\n6 6\n  10^x   Number of primes:\n  1      4\n  2      28\n  3      167\n  4      1299\n  5      11013"}︡{"stdout":"\n6 7\n  10^x   Number of primes:\n  1      1\n  2      16\n  3      105\n  4      784\n  5      6605"}︡{"stdout":"\n6 8\n  10^x   Number of primes:\n  1      4\n  2      30\n  3      226\n  4      1719\n  5      14473"}︡{"stdout":"\n6 9\n  10^x   Number of primes:\n  1      0\n  2      12\n  3      92\n  4      698\n  5      5861"}︡{"stdout":"\n7 1\n  10^x   Number of primes:\n  1      6\n  2      32\n  3      241\n  4      1884\n  5      14834"}︡{"stdout":"\n7 2\n  10^x   Number of primes:\n  1      2\n  2      12\n  3      96\n  4      692\n  5      5701"}︡{"stdout":"\n7 3\n  10^x   Number of primes:\n  1      1\n  2      16\n  3      124\n  4      929\n  5      7623"}︡{"stdout":"\n7 4\n  10^x   Number of primes:\n  1      2\n  2      15\n  3      124\n  4      955\n  5      7988"}︡{"stdout":"\n7 5\n  10^x   Number of primes:\n  1      4\n  2      34\n  3      239\n  4      1880\n  5      15142"}︡{"stdout":"\n7 6\n  10^x   Number of primes:\n  1      0\n  2      10\n  3      91\n  4      643\n  5      5184"}︡{"stdout":"\n7 7\n  10^x   Number of primes:\n  1      4\n  2      25\n  3      179\n  4      1331\n  5      10779"}︡{"stdout":"\n7 8\n  10^x   Number of primes:\n  1      1\n  2      14\n  3      73\n  4      676\n  5      5411"}︡{"stdout":"\n7 9\n  10^x   Number of primes:\n  1      4\n  2      22\n  3      154\n  4      1253\n  5      10398"}︡{"stdout":"\n8 1\n  10^x   Number of primes:\n  1      3\n  2      15\n  3      130\n  4      971\n  5      8080"}︡{"stdout":"\n8 2\n  10^x   Number of primes:\n  1      4\n  2      31\n  3      194\n  4      1423\n  5      11650"}︡{"stdout":"\n8 3\n  10^x   Number of primes:\n  1      1\n  2      7\n  3      58\n  4      432\n  5      3673"}︡{"stdout":"\n8 4\n  10^x   Number of primes:\n  1      4\n  2      32\n  3      245\n  4      1799\n  5      14491"}︡{"stdout":"\n8 5\n  10^x   Number of primes:\n  1      3\n  2      15\n  3      106\n  4      897\n  5      7337"}︡{"stdout":"\n8 6\n  10^x   Number of primes:\n  1      3\n  2      23\n  3      156\n  4      1121\n  5      9546"}︡{"stdout":"\n8 7\n  10^x   Number of primes:\n  1      1\n  2      11\n  3      80\n  4      582\n  5      4690"}︡{"stdout":"\n8 8\n  10^x   Number of primes:\n  1      3\n  2      25\n  3      177\n  4      1303\n  5      10653"}︡{"stdout":"\n8 9\n  10^x   Number of primes:\n  1      1\n  2      10\n  3      76\n  4      597\n  5      4953"}︡{"stdout":"\n9 1\n  10^x   Number of primes:\n  1      4\n  2      23\n  3      180\n  4      1393\n  5      11075"}︡{"stdout":"\n9 2\n  10^x   Number of primes:\n  1      2\n  2      12\n  3      124\n  4      948\n  5      7833"}︡{"stdout":"\n9 3\n  10^x   Number of primes:\n  1      3\n  2      30\n  3      234\n  4      1776\n  5      14504"}︡{"stdout":"\n9 4\n  10^x   Number of primes:\n  1      1\n  2      11\n  3      89\n  4      669\n  5      5531"}︡{"stdout":"\n9 5\n  10^x   Number of primes:\n  1      3\n  2      29\n  3      220\n  4      1770\n  5      14537"}︡{"stdout":"\n9 6\n  10^x   Number of primes:\n  1      0\n  2      10\n  3      86\n  4      715\n  5      5869"}︡{"stdout":"\n9 7\n  10^x   Number of primes:\n  1      4\n  2      30\n  3      201\n  4      1584\n  5      13289"}︡{"stdout":"\n9 8\n  10^x   Number of primes:\n  1      2\n  2      17\n  3      110\n  4      894\n  5      7315"}︡{"stdout":"\n9 9\n  10^x   Number of primes:\n  1      2\n  2      30\n  3      155\n  4      1262\n  5      10509"}︡{"stdout":"\n"}︡{"done":true}︡
︠1aa64ae1-e9f2-428d-a012-b58c89457fd8︠

# alpha_1 is divisible by a prime of p for p<90
num_primes(163555985795350651646450,127398942443782690465323,5)
︡f7602dc8-44bf-4eaf-a160-df3081f83ea0︡{"stdout":"  10^x   Number of primes:\n  1      0\n  2      0\n  3      5\n  4      46\n  5      493"}︡{"stdout":"\n"}︡{"done":true}︡
︠f90f58a6-2618-46a0-bacc-0c14bd03e6b3s︠

print (1+i)*(3)*(2*i-1)*(7)*(11)*(2*i+3)*(i+4)*(19)*(23)*(2*i+5)*(31)*(6+i)*(5+4*i)*(47)*(2*i+7)*(5+6*i)*(67)*(71)*(8+3*i)*(79)*(83)*(8+5*i)
︡15cf7ad8-fc78-4fd2-8953-b0d6abd4790f︡{"stdout":"127398942443782690465323*i + 163555985795350651646451\n"}︡{"done":true}︡
︠8bcf25cb-b854-45f0-9665-bae69f92f3dbs︠
print(bertrand(163555985795350651646450,127398942443782690465323,1000))
︡af8b4329-59b4-4660-840e-b628d674ad3a︡{"stdout":"(35698056571664823929657469901, 27806347975664897586342328626)"}︡{"stdout":"\n"}︡{"done":true}︡
︠13de10c3-4568-4a25-82e6-aedb51e665eas︠

K.<i> = QuadraticField(-1)
ZI = K.ring_of_integers()

def Norm(x,y):
    return x^2+y^2

def GGCD(a,b,c,d):
    d = K.ideal(a+b*i, c+d*i).gens_reduced()[0]
    return d

def rel_prime(a,b,c,d):
    return GGCD(a,b,c,d)==1


def general_bertrand(c,d,a,b,x):
    end = 1
    start = Norm((c+a),(b+d))
    tooBig = False
    while (not tooBig):
        done = False
        k = start
        while (not done):
            k = k - 1
            if Norm((c+a*k),(d+b*k)) in Primes():
                end = k
                start = k + Norm((c+a*k),(d+b*k))
                done = True
            if k < end:
                return "FAILURE"
        if start > 10**30:
            tooBig = True
    return (c, d, a, b)


for c in range(1,20):
    for d in range(c,20):
        for a in range(1,20):
            for b in range(1,20):
                if gcd(a,b)==1:
                    if GGCD(c,d,a,b)==1:
                        if general_bertrand(c,d,a,b,100) == "FAILURE":
                            print c,d,a, b, "booooo"
    print c                            
print "done"
        
︡a12456ae-314d-42d6-bc2f-45f9d298e6d8︡{"stdout":"1"}︡{"stdout":"\n2"}︡{"stdout":"\n3"}︡{"stdout":"\n4"}︡{"stdout":"\n5"}︡{"stdout":"\n6"}︡{"stdout":"\n7"}︡{"stdout":"\n8"}︡{"stdout":"\n9"}︡{"stdout":"\n10"}︡{"stdout":"\n11"}︡{"stdout":"\n12"}︡{"stdout":"\n13"}︡{"stdout":"\n14"}︡{"stdout":"\n15"}︡{"stdout":"\n16"}︡{"stdout":"\n17"}︡{"stdout":"\n18"}︡{"stdout":"\n19"}︡{"stdout":"\n"}︡{"stdout":"done\n"}︡{"done":true}︡
︠22a5755a-6be5-44d1-93b0-9cd9ef7d4bf4s︠





(35698056571664823929657469901**2 + 27806347975664897586342328626**2) in Primes()
︡736cfc00-9dd2-4ae0-9b9b-5897dd4e3802︡{"stdout":"True\n"}︡{"done":true}︡
︠489710df-1019-4687-acc0-e4b654d4baad︠


︡5f1a7921-2855-4ed8-b28e-ef2294e1d5ed︡{"stderr":"Error in lines 1-6\nTraceback (most recent call last):\n  File \"/projects/sage/sage-7.6/local/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 995, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 4, in <module>\nTypeError: fastBertrand() takes exactly 2 arguments (3 given)\n"}︡{"done":true}︡
︠ac8b4b08-3232-4484-b6f7-d06599c7b7fds︠
def Norm(x,y):
    return x^2+y^2

def fastBertrand(a,b):
    end = 1
    start = Norm((1+a),b)
    tooBig = False
    while(not tooBig):
        done = False
        k = start
        while(not done):
            k = k - 1
            if Norm((1+a*k),b*k) in Primes():
                end = k
                start = k + Norm((1+a*k),b*k)
                done = True
            if k < end:
                return "FAILURE"
        if end > 10**1:
            tooBig = True

    return k
import random

num = 0
count = 0
for n in range(10000):
    a = random.randint(10**12, 10**18)
    b = random.randint(10**12, 10**18)
    if gcd(a,b)==1:
        num = num +1
        if fastBertrand(a,b) == "FAILURE":
            count = count + 1
            print a, b
        if num % 100 == 0:
            print num /100, "% complete"
print count
print num
︡096e57eb-eb01-4f75-88d4-ab600d564f14︡{"stdout":"1"}︡{"stdout":" % complete\n2"}︡{"stdout":" % complete\n3"}︡{"stdout":" % complete\n4"}︡{"stdout":" % complete\n5"}︡{"stdout":" % complete\n6"}︡{"stdout":" % complete\n7"}︡{"stdout":" % complete\n8"}︡{"stdout":" % complete\n9"}︡{"stdout":" % complete\n10"}︡{"stdout":" % complete\n11"}︡{"stdout":" % complete\n12"}︡{"stdout":" % complete\n13"}︡{"stdout":" % complete\n14"}︡{"stdout":" % complete\n15"}︡{"stdout":" % complete\n16"}︡{"stdout":" % complete\n17"}︡{"stdout":" % complete\n18"}︡{"stdout":" % complete\n19"}︡{"stdout":" % complete\n20"}︡{"stdout":" % complete\n21"}︡{"stdout":" % complete\n22"}︡{"stdout":" % complete\n23"}︡{"stdout":" % complete\n24"}︡{"stdout":" % complete\n25"}︡{"stdout":" % complete\n26"}︡{"stdout":" % complete\n27"}︡{"stdout":" % complete\n28"}︡{"stdout":" % complete\n29"}︡{"stdout":" % complete\n30"}︡{"stdout":" % complete\n31"}︡{"stdout":" % complete\n32"}︡{"stdout":" % complete\n33"}︡{"stdout":" % complete\n34"}︡{"stdout":" % complete\n35"}︡{"stdout":" % complete\n36"}︡{"stdout":" % complete\n37"}︡{"stdout":" % complete\n38"}︡{"stdout":" % complete\n39"}︡{"stdout":" % complete\n40"}︡{"stdout":" % complete\n41"}︡{"stdout":" % complete\n42"}︡{"stdout":" % complete\n43"}︡{"stdout":" % complete\n44"}︡{"stdout":" % complete\n45"}︡{"stdout":" % complete\n46"}︡{"stdout":" % complete\n47"}︡{"stdout":" % complete\n48"}︡{"stdout":" % complete\n49"}︡{"stdout":" % complete\n50"}︡{"stdout":" % complete\n51"}︡{"stdout":" % complete\n52"}︡{"stdout":" % complete\n53"}︡{"stdout":" % complete\n54"}︡{"stdout":" % complete\n55"}︡{"stdout":" % complete\n56"}︡{"stdout":" % complete\n57"}︡{"stdout":" % complete\n58"}︡{"stdout":" % complete\n59"}︡{"stdout":" % complete\n60"}︡{"stdout":" % complete\n61"}︡{"stdout":" % complete\n"}︡{"stdout":"0\n"}︡{"stdout":"6138\n"}︡{"done":true}︡
︠545eac88-612d-427a-988b-a87b3e557d6b︠









