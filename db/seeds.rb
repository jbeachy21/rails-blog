# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


5.times do 
    Article.create!([{ 
        title: "The IT Crowd",
        body: Faker::TvShows::TheITCrowd.quote,
        status: "public",
        user_id: 1
    }])
end

5.times do 
    Article.create!([{ 
        title: "Bojack Horseman",
        body: Faker::TvShows::BojackHorseman.quote,
        status: "public",
        user_id: 1
    }])
end
5.times do 
        Article.create!([{ 
        title: "The Big Lebowski",
        body: Faker::Movies::Lebowski.quote,
        status: "public",
        user_id: 1
    }])
end
5.times do 
    Article.create!([{ 
    title: "Recipe",
    body: Faker::Food.description,
    status: "public",
    user_id: 1
}])
end