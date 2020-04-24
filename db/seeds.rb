for i in 1..10
    Book.create(
        author: Faker::Book.author,
        title: Faker::Book.title,
        
    )

    puts "Created #{i} records"
end