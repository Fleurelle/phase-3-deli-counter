# Write your code here.
require "pry"

def line (line)
    katz_deli = []
    if katz_deli.empty?
        puts "The line is currently empty."
    else 
        counter = 1
        deliLine = []
        line.each do |patron|
            deliLine << "The line is currently: #{counter}. #{patron}"
            counter += 1
        end
        puts deliLine
    end

end