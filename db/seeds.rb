User.create!(
    email: "test@test.com",
    password: "111111",
    password_confirmation: "111111", 
    name: "Admin user",
    roles: "site_admin"
)
User.create!(
    email: "test2@test.com",
    password: "111111",
    password_confirmation: "111111", 
    name: "Regular user",
)
puts "Created 1 admin and 1 regular user"

3.times do |topic|
	Topic.create!(
		title: "Topic #{topic}"
	)
end
10.times do |blog|
	Blog.create!(
		title: "My blog Post #{blog}",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
		topic_id: Topic.last.id
)
end

puts "10 blogs created"

5.times do |skill|
	Skill.create!(
	title: "Rails #{skill}",
	percent_utilized: 15
)
end

puts "5 skills created"

8.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio title: #{portfolio_item}",
		subtitle: "Ruby",
		body: "latin text",
		main_image: "http://placehold.it/600x400",
		thumb_image: "http://placehold.it/350x150"
)
end
1.times do |portfolio_item|
        Portfolio.create!(
                title: "Portfolio title: #{portfolio_item}",
                subtitle: "Angular",
                body: "latin text",
                main_image: "http://placehold.it/600x400",
                thumb_image: "http://placehold.it/350x150"
)
end


puts "9 portfolio items created"

3.times do |technology|
	Portfolio.last.technologies.create!(
		name: "Technology: #{technology}"
	)
end

puts "3 technologies created"
