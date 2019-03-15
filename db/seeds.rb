# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

3.times { Item.create!(name: 'Sample Todo') }
2.times { Item.create!(name: 'Sample Todo', is_done: true) }
