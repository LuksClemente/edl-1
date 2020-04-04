print("CALCULADORA EM PYTHON 3\n\n")
escolha=input("Escolha a opcao desejada: +, -, *, /: ")
n1=float(input("Insira o primeiro numero: "))
n2=float(input("Insira o segundo numero: "))
if(escolha == '+'):
    result = n1+n2
    print("{:1.2f} + {:1.2f} = {:1.2f}".format(n1,n2,result))
    
elif(escolha == '-'):
    result = n1-n2
    print("{:1.2f} - {:1.2f} = {:1.2f}".format(n1,n2,result))

elif(escolha == '*'):
    result = n1*n2
    print("{:1.2f} * {:1.2f} = {:1.2f}".format(n1,n2,result))
    
else:
    result = n1/n2
    print("{:1.2f} / {:1.2f} = {:1.2f}".format(n1,n2,result))
    
