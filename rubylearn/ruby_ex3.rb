class MegaSaudacao
	attr_accessor :names
	
	# criar o objecto
	def initialize (names = "Mundo")
		@names = names
	end
	
	# Dizer ola a todos
	def diz_ola
		if @names.nil?
			puts "nao ha ninguem na lista para dizer ola!"
		elsif @names.respond_to? ("each")
			#neste caso, @names e' uma qualquer lista, logo itera!
			@names.each do |name|
				puts "Ola #{name}"
			end
		else
			puts "Ola #{@names}"
		end
	end
	
	# Dizer adeus a todos
	def diz_adeus
		if @names.nil?
			puts "nao ha ninguem na lista para dizer adeus!"
		elsif @names.respond_to?("join")
			#Junta os elementos da lista separados por virgulas
			puts "Adeus #{@names.join(",")}. Ate breve!"
		else
			puts "Adeus #{@names}. Ate breve!"
		end
	end
end

if __FILE__ == $0
	ms = MegaSaudacao.new
	ms.diz_ola
	ms.diz_adeus
	
	#mudar o nome para ser "Zeke"
	ms.names = "Zeke"
	ms.diz_ola
	ms.diz_adeus
	
	#mudar o nome para um array de nomes
	ms.names = ["Albert", "Brenda", "Charles", "Dave", "Engelbert"]
	ms.diz_ola
	ms.diz_adeus
	
	#mudar para nil
	ms.names = nil
	ms.diz_ola
	ms.diz_adeus
end

	