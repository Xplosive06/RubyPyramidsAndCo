puts "Salut et bienvenue dans le tout nouveau ESCALIER 3000"
puts "Tu es pour le moment sur la 1ère marche de ESCALIER 3000!"
puts "Jètes ton dé pour pouvoir commencer"


def elevator
	stepNumber = 0
	tourNumber = 0

	while stepNumber < 10 do
		tourNumber += 1
		randomNumber = rand(1..6)

		case randomNumber
		when 1
			stepNumber -= 1
			if stepNumber < 0
				stepNumber = 0
			puts "Vous êtes tout en bas"
			else
			
			puts "Vous descendez d'une marche et êtes maintenant à la case: #{stepNumber}"
			end
		when 2..4
			puts "Vous ne bougez pas et êtes toujours à la case: #{stepNumber}"
		when 5..6
			stepNumber += 1
			puts "Vous montez une marche et êtes maintenant à la case: #{stepNumber}"
		end

	end

	puts "Vous êtes enfin sur la dernière marche !"

	return tourNumber
end

def average_finish_time
	totalFinishTime = 0
	for testNumber in 1..100
		totalFinishTime = totalFinishTime + elevator
	end
	puts "Moyenne sur 100 essais : #{totalFinishTime / 100}"
end


average_finish_time