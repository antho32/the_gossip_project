require 'Faker'

User.destroy_all
Taggossip.destroy_all
Tag.destroy_all
Privatemessage.destroy_all
Gossip.destroy_all
City.destroy_all

10.times do 
    City.create(
        name: Faker::Address.city,
        zip_code: Faker::Base.regexify(/[0-8][0-9][0-9]{3}/)
    )
end 
10.times do 
    Tag.create(
        tittle: Faker::Lorem.word
    )
end 

20.times do 
    Privatemessage.create(
        content: Faker::Lorem.paragraph(2)

    )
end 

10.times do 
    User.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        description: Faker::Lorem.sentence,
        email: Faker::Internet.email,
        age: Faker::Number.between(10, 80),
        city_id: City.all.sample.id
    )
end 

20.times do 
    Gossip.create(
        title: Faker::Lorem.sentence(3),
        content: Faker::Lorem.paragraph(3),
        user_id: User.all.sample.id
    )
end 

30.times do 
    Taggossip.create(
        gossip_id: Gossip.all.sample.id,
        tag_id: Tag.all.sample.id
    )
end 