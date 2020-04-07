# Perl
![Perl](http://www.w3big.com/perl/0020_999_1373967199_perl_256.png)

### Introdução
Perl é uma linguagem de programação de alto nível multiplataforma. Chamada por muitos de "Canivete Suíço", a linguagem é bastante flexível, possuindo um leque de aplicações bem amplo, tais como aplicações CGI para a web, administração de sistemas, manipulação de dados criptográficos, programação gráfica e outras várias aplicações que exigem facilidade em manipulação de Strings
### História
Perl foi criado por Lerry Walls em 1987, fortemente baseada em AWK, BASIC, C, C++, Lisp, sed e no shell dos sistemas UNIX, Originalmente a única documentação disponivel sobre perl era uma man page ("man perl" nos terminais unix) e mais tarde em 1991 o livro Programming Perl, conhecido por muitos como Camel Book por conta de sua capa, tornou-se a referencia universal para Perl.
### Características
Perl pode ser definida como uma linguagem multiparadigma, isto é, uma linguagem que suporta vários paradigmas de programação. Os paradigmas suportados são:  
  
* Programação Imperativa: Sua maneira de programar voltada a descrever como o software deve realizar cada tarefa, linha por linha, através de comandos, com suas varíaveis modelando as células de memória.

* Programação Estruturada: Assim como C e outras linguagens estruturadas, Perl permite que o usuário possa definir as suas próprias funções e subrotinas. Além disso possui estruturas de controle muito semelhantes a C.

* Programação Funcional: Um dos recursos da programação funcional existentes em Perl são a maneira como as funções podem ser passadas como parâmetro e valores para outras e funções e podendo ter o resultado armazenado em uma constante.

* Programação Orientada a Objetos: Perl também possui um modelo de orientação a objetos. Em Perl os objetos são estruturas de dados que são associadas a uma classe, os construtores são apenas subs que retornam uma variável e os métodos são apenas subs que recebem a referência de um objeto já instanciado.  
  
Além disso, como Perl possui tipagem dinâmica, não é necessário especificar o tipo de uma variável, o intérprete Perl selecionará automaticamente o tipo de correspondência, dependendo do contexto. Em Perl temos 3 tipos de dados básicos: Escalares, Arrays e Hashs. Por influência das linguagens de Shell Script as variáveis escalares são precedidas por um $(cifrão), seguindo a lógica, os arrays são precedidos por @(arroba/at) e as hashs são precedidas por %(porcentagem).  
  
Assim como toda linguagem, Perl também possui vantagens e desvantagens:  
  
#### Vantagens:

  * Ótimo para manipulação de textos
  * Desenvolvida como Software Livre
  * Multiplataforma
  * Multiparadigma
  * Integração com banco de dados
  * Módulos HTML
  * Módulo CGI
  * Manipulação de dados criptografados  
  
  #### Desvantagens:  
    
  * Scripts lentos por conta do interpretador
  * Sem acesso a funções de baixo nível, ou seja, menos liberdade
  * muitos códigos são difíceis de ler e ruins de escrever, dificultando a manutenção
  * Processos que algumas vezes ocupam muito espaço na memória
### Exemplos 
#### Hello World em Perl
```pl
#!/usr/local/bin/perl
print("Hello World!");
```
#### 10 Primeiros números da sequencia de fibonacci em perl
```pl
#!/usr/local/bin/perl
$n=1;
$n2=1;
for($i = 0; $i < 10; $i++){
  print("$n\n");
	$t = $n2;
	$n2 = $n+$n2;
	$n = $t;
}
```
#### O programa acima em python 3
```py
n=1
n2=1
for i in range(10):
    print(n)
    n, n2 = n2, n+n2
```
##### Podemos ver diferenças óbvias entre os dois códigos:
1) Perl, por ser baseado em Shell Script possui o $ na declaração de variáveis e necessita de ';' no final da linha, já o python, não.

2) No python, ocorre a triangularização automática de variáveis, no perl, é necessária a criação de uma variável temporária "$t".

3) Entre outras diferenças menores na sintaxe do programa. 

#### Referências

* https://pt.wikipedia.org/wiki/Perl
* http://www.smeduquedecaxias.rj.gov.br/nead/Biblioteca/Forma%C3%A7%C3%A3o%20Continuada/Tecnologia/cursos/programacao/perl/cgi.pdf
* http://www.w3big.com/perl/perl-intro.html
* https://blol.org/1700-programacao-funcional-com-perl-parte-i-revista-e-aumentada
* https://www.vivaolinux.com.br/script/Orientacao-a-Objetos-Criando-e-usando-uma-classe-em-Perl/

