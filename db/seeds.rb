10.times do
    Kitten.create! do |kitten|
        kitten.name = ('a'..'z').to_a.shuffle[0..rand*15].join
        kitten.age = rand*20
        kitten.cuteness = rand*10
        kitten.softness = rand*10
    end
    
end
