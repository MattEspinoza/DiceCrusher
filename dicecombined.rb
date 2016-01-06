# Matt Espinoza Dice Roller - 3d6Crusher-Combiner vs. 1.0 

puts "*********************************************************"
puts "**                                                     **"
puts "**                 Welcome to the                      **"
puts "**           D6 Die 3d6Crusher-Combiner                **"
puts "**         Comparing 4d6-1 vs 3d8 8 times              **"
puts "**                                                     **"
puts "*********************************************************"
puts "How many total sample character rolls would you like to compare?"
var = gets

#Threed6Lines array is the first die roll array where it rolls 3d6 eight times.
Threed6Lines = Array.new
#Three6Stats array is the set of eight totals from the line array. The two lowest will be removed.
Threed6Stats = Array.new
#Three6Total array is the totals of 100 results of total stats.
Threed6Total = Array.new
#Threed6Average array is the average result from the 100 results.
Threed6Average = Array.new
var.to_i.times do

	#Start of sets of eight, take away the lowest 2 results
	8.times do

		#Start of individual die rolls
		3.times do
			def roll
		  	rand(6) + 1
			end
			Threed6Lines << roll
			end
			#puts "The list of rolls are"
			#puts Threed6Lines

			rollsum = Threed6Lines.inject{|rollsum,x|rollsum + x}
			Threed6Stats << rollsum
			#puts "Sum total = #{Threed6Stats}"
			Threed6Lines.clear
		end
	Threed6Stats.map(&:to_i)
	Threed6Stats.sort!
	Threed6Stats.sort!.shift(2)
	
	end
	statsum = Threed6Stats.inject{|statsum,x|statsum + x}
	Threed6Total << statsum

avesum = Threed6Total.inject{|avesum,x|avesum + x}
Threed6Average << avesum
Threed6Stats.clear


#Fourd6Lines array is the first die roll array where it rolls 4d6, removes the lowest.
Fourd6Lines = Array.new
#Fourd6Stats array is the set of six totals from the line array.
Fourd6Stats = Array.new
#Fourd6Total array is the totals of 100 results of total stats.
Fourd6Total = Array.new
#Fourd6Average array is the average result from the 100 results.
Fourd6Average = Array.new

var.to_i.times do

	#Start of sets of six rolls
	6.times do
		#Start of individual die rolls
		4.times do
			def roll
			  rand(6) + 1
			end
			Fourd6Lines << roll
			end
			#puts "The list of rolls are"
			#puts Fourd6Lines
			
			#Start of sorting
			Fourd6Lines.map(&:to_i).sort!
			Fourd6Lines.sort!.shift
			#puts "after sort"
			#puts Fourd6Lines
			linesuma = Fourd6Lines.inject{|linesuma,x|linesuma + x}
			Fourd6Stats << linesuma
			#puts "Sum total = #{Fourd6Stats}"
			Fourd6Lines.clear
		end
	statsuma = Fourd6Stats.inject{|statsuma,x|statsuma + x}
	Fourd6Total << statsuma
	Fourd6Stats.clear
	end
	#puts "Sum of totals = #{Fourd6Total}"
	
avesuma = Fourd6Total.inject{|avesuma,x|avesuma + x}
Fourd6Average << avesuma

#puts Fourd6Average
#puts "The total average stats are #{Fourd6Average}"
puts "*********************************************************"
puts "**                                                     **"
puts "**                                                     **"
puts "**                 Results Below                       **"
puts "**                                                     **"
puts "**                                                     **"
puts "*********************************************************"
puts " "
puts #{}"The Total stats are #{Threed6Average}"
puts "The average stat total for the 3d6 take away lowest two rolls, is #{Threed6Average.inject / (var.to_i)}"

puts " "
puts "The average stat total for the 4d6 take away lowest roll, is #{Fourd6Average.inject / (var.to_i)}" 
puts " "
puts " "
Fourd6Average.clear


			