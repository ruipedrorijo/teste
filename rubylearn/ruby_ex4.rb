$varglobal =  "este e' o conetudo da variavel global $varglobal"
y = 20
puts "#{y}"
y.to_f
puts "#{y.to_f}" # conversão em float
puts "#{y.to_s(2)}" #conversao do inteiro em binario - base 2
puts "#{y.to_s(16)}" #conversao do inteiro em octal - base 16

puts "#{defined? y}" #indica o scope da variavel y
puts "#{defined? $varglobal}" #indica o scope da variavel $varglobal
puts "\nIntroduza uma frase ou um numero:"
s = gets
puts "O valor introduzido foi #{$_}"
puts "O valor introduzido e guardado na variavel s e' #{s}"
puts "O process ID fo ruby interpreter e' #{$$}"


