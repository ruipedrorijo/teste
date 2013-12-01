class Saudacao
	def initialize (name = "qwert")
		@name = name
	end
	def diz_ola
		puts "Ola #{@name}"
	end
	def diz_adeus
		puts "Adeus #{@name}, ate breve"
	end
end


s = Saudacao.new("JoseAfonso")
s.diz_ola
s.diz_adeus
s.diz_adeus
s.respond_to? ("diz_ola")
s.respond_to? ("diz_adeus")
s.respond_to? ("name")

class Saudacao
	attr_accessor :name
end

s.name = "Margarida"
s.name
s.diz_ola


