# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Image.destroy_all

Note.destroy_all
note1 = Note.create(title: 'stuff to do', content: 'things i would like to be able to do in the near future', color: 'blue')
note2 = Note.create(title: 'girls id like to date', content: 'brandy, monica, kim k', color: 'green')
note3 = Note.create(title: 'places', content: 'amazing places i need to see', color: 'red')
Image.create(url: "https://images.pexels.com/photos/257360/pexels-photo-257360.jpeg?auto=compress&cs=tinysrgb&h=650&w=940", note_id: Note.all.sample.id)
Image.create(url: "https://images.pexels.com/photos/33109/fall-autumn-red-season.jpg?auto=compress&cs=tinysrgb&h=650&w=940", note_id: Note.all.sample.id)
Image.create(url: "https://images.pexels.com/photos/33109/fall-autumn-red-season.jpg?auto=compress&cs=tinysrgb&h=650&w=940", note_id: Note.all.sample.id)
