print("FIBONACCI\n\n");
print("O programa printa os 10 primeiros numeros da sequencia de fibonacci\n");
$n=1;
$n2=1;
for($i = 0; $i < 10; $i++){
	print("$n\n");
	$t = $n2;
	$n2 = $n+$n2;
	$n = $t;
}