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
    print("Hello World!");
```
#### Código usando a interface no TypeScript
```ts
    interface Ipessoa{
       nome: string;
       idade: number;
       email: string;
    }
    
    function exe( Ipessoa ) { // Com interface
       console.log("Olá %s você tem %d anos e seu email : %s",pessoa.nome, pessoa.idade, pessoa.email);
    }
 
    var pessoa = { nome : "nome" , idade : 22, email : "email@gmail.com"};
    exe(pessoa);
```    
#### Código anterior em JavaScript
```js
    function exe(Ipessoa) {
      console.log("Olá %s você tem %d anos e seu email : %s", pessoa.nome, pessoa.idade, pessoa.email);
    }
    var pessoa = { nome: "nome", idade: 22, email: "email@gmail.com" };
    exe(pessoa);
```    
No exemplo acima os códigos executam a mesma coisa e possuem sintaxes semelhantes, mas o Typescript tem o recurso Interface que ajuda a entender como o objeto funciona, tornando o código mais fácil de ser entendido e também mais fácil de corrigir. Porém o código fica maior. O recurso interface não existe no JavaScript.
#### Exemplo de sintaxes diferentes entre Python e TypeScript
##### Código em Python
```py
    listanum = [1,2,3,4]
    len(listanum) // len (tamanho da lista) é 4
```
##### Código em Typescript
```ts
    var frutas : [string];
    frutas = ["Banana", "Laranja", "Maça", "Manga"];
    frutas.length;     // o length de frutas é 4
```    
A sintaxe é um pouco diferente mas o resultado é o mesmo. As duas são fáceis de entender, o que contribui para a legibilidade do código.
#### Código em TypeScript que usa o recurso dos tipos condicionais
```ts
    // Programa que retorna o tipo de uma variável
    var array = [561,84,21];
    var array_char  = ['f', 'a', 'v'];
    var x = 5;
    console.log("%s",tipo(x));
 
    function tipo(vr : string|number|boolean|object): string {
            if (typeof vr === 'number')
                return "number";
            else if (typeof vr === 'string')
                return "string";
            else if (typeof vr === 'boolean')
                return "bolean";
            else if (typeof vr === 'object')
                return "object";
            else
                return "Tipo não primitivo";
    }
```    
**Saída**: number  
A função *tipo* verifica o tipo de uma variável.   
#### Código que tem uma função com o tipo de retorno condicional
```ts
    var x,y : number | string;
    x = 'Nm';
    y = 6;
    var z = somaouconc(x,y);
    if (typeof z === 'number')
        console.log("%d",z);
    else
      console.log("%s", z);
    function somaouconc ( x: number | string, y : number | string): number|string{
        if (typeof x === 'number' && typeof y === 'number')
            return x+y;
        else if (typeof x === 'string' && typeof y === 'string')
            return x+y;
        else
            return "As variáveis não possuem o mesmo tipo"; }
```
**Saída**: As variáveis não possuem o mesmo tipo.  
A função *somaouconc*  soma ou concatena duas variáveis, por isso, essa função pode retornar string ou number. Esse é um exemplo de uma função com retorno com tipos diferentes dependendo do tipo da variável passado por valor.    
#### Algoritmo de ordenação por seleção em Typescript
```ts
    // Função de ordenação que ordena tanto inteiro quanto strings
    var nomes : Array<string>;
    var num : Array<number>;
    num = [45,20,85,10,2,3,14,999,101,42,28,174,51];
    nomes = ["Lucas", "Hugo","Otto","Maria Eduarda","Rafaela","Carla","Rodrigo","Adonai","Pedro","Rayane"];
    console.log("Array desordenado: %s", nomes);
    console.log(num); 
    ordecao(nomes);  // os arrays são passados por referência
    ordecao(num);
    console.log("Array ordenado: %s",nomes);
    console.log(num);

    function ordecao (nom : Array<string>|Array <number>): void{
        let aux : any; // recebe qualquer tipo
        let i,j,mini : number;
        for (i=0; i < nom.length -1; i++){
            mini = i;
            for (j=i+1; j < nom.length; j++){
                if (nom[j] < nom[mini])
                    mini = j;          
            }
            aux = nom[i];
            nom[i] = nom[mini];
            nom[mini] = aux;
        }
    } 
```
**Saída**:  
**Array desordenado**: Lucas,Hugo,Otto,Maria Eduarda,Rafaela,Carla,Rodrigo,Adonai,Pedro,Rayane  
                   [ 45, 20, 85, 10, 2, 3, 14, 999, 101, 42, 28, 174, 51 ]  
**Array ordenado**: Adonai,Carla,Hugo,Lucas,Maria Eduarda,Otto,Pedro,Rafaela,Rayane,Rodrigo  
                   [ 2, 3, 10, 14, 20, 28, 42, 45, 51, 85, 101, 174, 999 ]  

Nesse algoritmo de ordenação aproveito de um dos recursos do Typescript, o de **tipos condicionais**, e com isso ordeno tanto strings e inteiros na mesma função de um jeito simples.  
#### Referências
[Referência para os tipos condicionais](https://artsy.github.io/blog/2018/11/21/conditional-types-in-typescript/)  
[Manual do TypeScript - Tipos Básicos](https://www.typescriptlang.org/docs/handbook/basic-types.html)  
[Manual do TypeScript - Tipos Avançados](https://www.typescriptlang.org/docs/handbook/advanced-types.html)  
[Objetos - Referências de valores](https://blog.da2k.com.br/2017/01/25/objetos-referencias-de-valores-em-javascript/)  

