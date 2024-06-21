# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here

pp @candidates

 # Test the find function
 puts "Finding candidate with id 5:"
 pp find(5)
 
 # Test the experienced? function
 puts "\nChecking if candidate with id 5 is experienced:"
 candidate = find(5)
 pp experienced?(candidate) if candidate
 
 # Test the qualified_candidates function
 puts "\nList of qualified candidates:"
 pp qualified_candidates(@candidates)

 # Test the ordered_by_qualifications function
 puts "\nList of ordered_by_qualifications:"
 pp ordered_by_qualifications(@candidates)