# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.transaction do


    Cat.create(name: 'Frank', sex: 'M', color: 'orange', birth_date: '2015/01/20', description: 'Cool')
    Cat.create(name: 'Bob', sex: 'M', color: 'black', birth_date: '2014/01/20', description: 'Fun')
    Cat.create(name: 'Fluff', sex: 'M', color: 'orange', birth_date: '2016/01/20', description: 'Boring')
    Cat.create(name: 'Kitty', sex: 'F', color: 'white', birth_date: '2017/01/20', description: 'Tired')
    Cat.create(name: 'Mary', sex: 'F', color: 'brown', birth_date: '2018/01/20', description: 'Happy')
    Cat.create(name: 'Marshall', sex: 'F', color: 'black', birth_date: '2019/01/20', description: 'Hungry')

end