require "pry"

# def line (line)
#     katz_deli = []
#     if line.empty?
#         puts "The line is currently empty."
#     else 
#         counter = 1
#         deliLine = []
#         introSentence = "The line is currently:"
#         line.each do |patron|
#             deliLine << " #{counter}. #{patron}"
#             counter += 1
#         end
#         puts introSentence + deliLine.join()
#     end
# end

def line(queue)
    if queue.length == 0
        puts "The line is currently empty."
    else
        counter = 1
        output = "The line is currently: "
        queue.each do |patron|
           output += "#{counter}. #{patron} "
           counter += 1
        end
        puts output[0...-1]
    end
end

def take_a_number(queue, patron)
   queue << patron
   puts "Welcome, #{patron}. You are number #{queue.length} in line."
end

def now_serving(queue)
    if queue.length != 0
        puts "Currently serving #{queue.shift()}."
    else
        puts "There is nobody waiting to be served!"
    end
end