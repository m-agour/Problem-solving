s = input()

allCap = True
allButFirst = True
for i in range(len(s)):
    if s[i] >= "a"  and s[i] <= "z":
        allCap = False
        if i > 0:
            allButFirst = False
    elif i == 0:
        allButFirst = False
  
    
if allButFirst:
    print(s.lower().capitalize())
elif allCap:
    print(s.lower())
else:
    print(s)