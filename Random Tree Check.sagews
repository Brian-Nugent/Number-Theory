︠a4d911db-fee2-4375-b65f-e56b7744b052s︠
def key(i):
    return len(i[1])

def cmp(a,b):
    return key(b)-key(a)

def Ggcd(s,t):
    if s == 0 or t == 0:
        return True
    if s == t:
        return False
    F = factor(s-t)
    for fac in F:
        if not (s % fac[0] == 0):
            return False
    return True

def genCoprimeList(n):
    coplist = []
    for j in range(n):
        jlist = []
        for k in range(n):
            if Ggcd(j,k):
                jlist.append(k)
        coplist.append((j,tuple(jlist)))
    return coplist

def sort_coplist(n):
    list = genCoprimeList(n)
    list.sort(cmp)
    return list

def key2(i):
    return i[1]

def cmp2(a,b):
    return key2(b) - key2(a)

def degree_tuple(list):
    newlist = []
    for j in range(len(list)):
        newlist.append((j, list[j]))
    newlist.sort(cmp2)
    return newlist

def starcheck(n):
    tree_iterator = graphs.trees(n)
    notstar = []
    for T in tree_iterator:
        if (not T.degree_sequence()[1] <= 2):
            notstar.append(T)
    return notstar


def mapping_check(T, mapping, coList, n):
    for i in range(n):
        neighbors = T.neighbors(i)
        for ele in neighbors:
            if not (mapping[ele] in coList[mapping[i]][1]):
                return False
    return True

def genCoprimeDict(n):
    coDict = {0:[]}
    for j in range(n):
        jlist = []
        for k in range(n):
            if Ggcd(j,k):
                jlist.append(k)
        coDict[j] = jlist
    return coDict
︡3e929e8b-51fa-4907-952d-97168ff4e300︡{"done":true}︡
︠d91ed651-c753-45f8-bee5-d066b5a174d6s︠

coGraph = Graph(genCoprimeDict(10))
T = graphs.RandomTree(10)
    if coGraph.subgraph_search(T) == None:
        show(T)
    else:
        print "DONE"
    show(coGraph)
    show(T)
︡4ecd080f-3a80-4658-8b8b-9b4786c2605f︡{"done":true}︡
︠a7cd873e-a035-4801-a82e-575b34ff83b9︠









