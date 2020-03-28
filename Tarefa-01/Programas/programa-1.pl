use Switch;
print("CALCULADORA EM PERL\n\n");
print("Escolha a opcao desejada: ");
print("+, -, *, /\n");
$escolha = <STDIN>;
chomp($escolha);
print("Insira o primeiro numero:\n");
$n = <STDIN>;
chomp($n);
print("Insira o segundo numero:\n");
$n2 = <STDIN>;
chomp($n2);
switch($escolha){
	case "+"{
		$r = $n + $n2;
		print("$n + $n2 = $r\n");
	}
	case "-"{
		$r = $n - $n2;
		print("$n - $n2 = $r\n");
	}
	case "*"{
		$r = $n * $n2;
		print("$n * $n2 = $r\n");
	}
	case "/"{
		$r = $n / $n2;
		print("$n / $n2 = $r\n");
	}
}
