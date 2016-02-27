# Code Reading

#define a function called fizzbuzz which takes in a number as a parameter. 
def fizzbuzz(num)
  # Example comment line

#sets up case which is similiar to if statements. 
  case
    #when number is multiple of 15, return "FizzBuzz", do no further cases and end
    when num % 15 == 0 then "FizzBuzz"
    #when number is multiple of 3, return "Fizz", do no further cases and end
    when num % 3  == 0 then "Fizz"
    #when number is multiple of 5, return "Buzz", do no further cases and end
    when num % 5  == 0 then "Buzz"
    #if all cases do no match, return the number  
    else num
  #ends the case statement    
  end
#end the function definition
end

#define a function called 'fizz_buzz_to' which takes in 1 args called limit
def fizz_buzz_to(limit)
  #from 1 to the limit number, for each number, take the number 
  1.upto(limit).each do |num|
    #print out result of calling fizzbuzz with the number.
    puts fizzbuzz(num)
  #ends the each do  
  end
#ends the function definition.  
end

#sample call
# fizz_buzz_to(100)

# Fix Broken Code

def area_of_triangle(base, height)
  (base * height) / 2
end

base = 7
height = 6

puts area_of_triangle(base, height)

# Coding

# Add a method called "add_party" that takes a string (representing the name of the party) as a parameter 
# and adds the name to an array called list, this method should return the name of the recently added party

# Add a method called "list" that displays the list array 
# of all of the parties that are currently waiting for a table in the order in which they were added 
# (i.e. the name listed first represents the first party in the list, second represents the second party and so on...)

# Add a method called "seat" that removes the first string (representing the party) from the list array, 
# this method should return the newly updated list (with the name of the recently seated party removed)
# Make sure you create a new instance of the Waitlist class and call each method
# Use puts to print the results of each method in the console




class Waitlist
  # add your code here
  attr_writer :list_of_parties

  def initialize()
    puts "calling initialize"
    @list_of_parties = []
  end
  
  def add_party(party_name)
    @list_of_parties.push(party_name)
    # puts list_of_parties.inspect
    "#{party_name} has been added to the list"
  end

  def list()
    for party_name in @list_of_parties
      "#{party_name}"
    end
  end

  def seat(party_name)
    @list_of_parties.delete(party_name)
    return @list_of_parties
  end
end


myList = Waitlist.new
# puts myList.inspect

puts myList.add_party('bears')
puts myList.add_party('cats')
# myList.add_party('dogs')
# myList.add_party('sharks')
# myList.add_party('birds')
# puts myList.inspect

puts myList.list()

puts myList.seat('bears')
puts myList.seat('cats')

puts myList.inspect
