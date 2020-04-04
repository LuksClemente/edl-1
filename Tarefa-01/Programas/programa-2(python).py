from random import *
print("ADIVINHE O NUMERO\n\n")
print("Voce tem tres chances e o numero esta entre 0 e 9 :)\n")
n=int(randint(0,10))
print(n)
for i in range(3):
    e=int(input("Faca sua escolha: "))
    if(e > n):
        print("menor!")
    elif(e < n):
        print("maior!")
    else:
        print("Ganhou!!!!!")
        break
