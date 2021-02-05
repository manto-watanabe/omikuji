# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
luckies = %w(大吉 中吉 小吉 吉 凶 大凶)
user = User.create

luckies.each do |lucky|
    Post.create(content: lucky, user_id: user.id)
end