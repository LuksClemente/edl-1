print("ADIVINHE O NUMERO\n\n");
print("Voce tem tres chances e o numero esta entre 0 e 9 :)\n");
$n=int(rand(10));
#print("$n");
for($i = 0, $i<3, $i+=1){
	print("Faca sua escolha:\n");
	$e=<STDIN>;
	chomp($e);
	if($e > $n) {
		print("menor!\n");
	}
	elsif($e < $n){
		print("maior!\n");
	}
	else{
		print("Ganhou!!!!!\n");
		last;
	}
}
