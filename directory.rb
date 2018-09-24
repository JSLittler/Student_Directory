def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  while !name.empty? do
    students << {ID: students.length + 1, name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

def print_header
  puts "The students of Villains Academy".center(100)
  puts "_____________".center(100)
end

def print(students)
  n = 1
  students.each_with_index do |student|
    puts "#{student[:ID]}. #{student[:name]} (#{student[:cohort]} cohort).".ljust(100)
    n += 1
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students".ljust(100)
end

def interactive_menu
  students = []
  loop do
    puts "What would you like to do?"
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
    selection = gets.chomp
    case selection
      when "1"
        students = input_students
      when "2"
        print_header
        print(students)
        print_footer(students)
      when "9"
        exit
      else
        puts "I don't know what you meant, try again"
    end
  end
end

interactive_menu