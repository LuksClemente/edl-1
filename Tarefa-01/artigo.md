# Perl
![Perl](http://www.w3big.com/perl/0020_999_1373967199_perl_256.png)

### Introdução
É uma linguagem que complementa o JavaScript, tendo funcionalidades e recursos que não existem em JavaScript. A principal característica do TypeScript é a tipagem estática.
Ela foi desenvolvida pela Microsoft no fim de 2012, foi influenciada pelas linguagens: JavaScript, Java, C#.
### Classificação
O TypeScript é uma linguagem multi-paradigmas. O paradigma usado com mais frequência é a orientação a objetos.
É uma linguagem de tipagem estática. Seu principal uso é para o desenvolvimento Web.
### Avaliação
É uma linguagem de fácil aprendizagem para quem tem experiência com as linguagens que ela foi influenciada, C#,Java e JavaScript, pois não traz muitas inovações na sintaxe e semântica do código. Por ser de tipagem estática ela é costuma ser mais legível que JavaScript, mas em relação a outras linguagens como Python ela não é tão legível porque seus comandos têm nomes grandes e menos intuitivos como no Python.
A manutenção do código é mais simples que no Javascript, pois alguns erros que ocorrem aparecem na compilação, enquanto que em JavaScript erros parecidos ocorreriam na execução.
E como a maioria das linguagens atuais ela é portável podendo ser usada em qualquer sistema operacional e executada em qualquer navegador.
Uma das funcionalidades do typescript são os tipos condicionais.
Dessa forma, dependendo do valor atribuído a uma variável ela vai ter tipos distintos e isso pode ser feito de um modo simples.
Essa funcionalidade também aplica-se às funções,por exemplo, uma função de ordenação, 
usando essa funcionalidade é possível ordena tanto strings e inteiros sem precisar criar uma função para cada tipo. 
O TypeScript também possui o recurso da inferência de tipos, nem todas as linguagens tipadas estaticamente possuem esse recurso, ele também possui tipos genéricos, o tipo any e unknow, que são tipos que recebem qualquer um dos tipos primitivos da linguagem.
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

