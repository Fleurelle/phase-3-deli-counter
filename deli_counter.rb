# Write your code here.
require "pry"

katz_deli = []

def line (katz_deli)
    
    # If there is nobody in line, it should say "The line is currently empty."
    if katz_deli.length == 0
       puts "The line is currently empty."

    #    shows everyone their current place in the line
    else 
        counter = 1
        names = []
        introSentence= "The line is currently: "
        katz_deli.each do |name|       
            names << "#{counter}. #{name}"
            counter += 1
        end
        puts introSentence + names.join(" ")
    end
end 

def take_a_number(katz_deli, name)
    katz_deli << name
    puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
    if katz_deli.length ==0
        puts "There is nobody waiting to be served!"
    else 
        puts "Currently serving #{katz_deli.first}."
        katz_deli.shift()
    end
end