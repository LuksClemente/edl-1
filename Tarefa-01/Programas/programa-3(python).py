print("FIBONACCI\n")
print("O porgrama printa os 10 primeiros numeros da sequencia de fibonacci")
n=1
n2=1
for i in range(10):
    print(n)
    n, n2 = n2, n+n2
