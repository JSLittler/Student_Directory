@students = []

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  name = gets.chomp
  while !name.empty? do
    @students << {ID: @students.length + 1, name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    name = gets.chomp
  end
  @students
end

def print_header
  puts "The students of Villains Academy".center(100)
  puts "_____________".center(100)
end

def print_student_list
  n = 1
  @students.each_with_index do |student|
    puts "#{student[:ID]}. #{student[:name]} (#{student[:cohort]} cohort).".ljust(100)
    n += 1
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students".ljust(100)
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit" 
end

def show_students
  print_header
  print_student_list
  print_footer
end

def process(selection)
  case selection
    when "1"
      input_students
    when "2"
      show_students
    when "9"
      exit
    else
      puts "I don't know what you mean, try again"
  end
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

interactive_menu