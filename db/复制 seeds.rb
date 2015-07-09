# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all

Product.create(:title => 'java 1.8',
               :description => 
               %{
                    <P>我是Java1.8</p>  
               },
               :image_url => '/images/ruby.jpg',
               :price => 49.50
               )
