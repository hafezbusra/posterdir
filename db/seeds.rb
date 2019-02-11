# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'
require 'time'
require 'date'

csv_text = File.read(Rails.root.join('db', 'data.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  c = FypPoster.new
  c.p_title = row['Title Project']
  c.student_name = row[' Student Name']
  c.p_id = row[' Project ID']
  c.student_id = row[' Student ID']
  c.supervisor_name = row[' Supervisor Name']
  c.moderator_name = row[' Moderator Name']
  c.poster_img = row[' Image File']
  c.save(validate: false)
  puts "#{c.p_id}, #{c.p_title} saved"
end
puts "There are now #{FypPoster.count} rows in the poster table"
