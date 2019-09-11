require 'faker'


20.times do
    User.create(
        name: Faker::Name.unique.name, 
        email: Faker::Internet.email, 
        password: 'password', 
        github_link: Faker::Internet.url, 
        skills: Faker::ProgrammingLanguage.name
    )
end

20.times do
    User.create(
        name: Faker::Name.unique.name, 
        email: Faker::Internet.email, 
        password: 'password', 
        github_link: Faker::Internet.url, 
        skills: 'Javascript'
    )
end

5.times do
    User.create(
        name: Faker::Name.unique.name, 
        email: Faker::Internet.email, 
        password: 'password', 
        github_link: Faker::Internet.url, 
        skills: 'Ruby'
    )
end

5.times do
    User.create(
        name: Faker::TvShows::SiliconValley.character, 
        email: Faker::Internet.email, 
        password: 'password', 
        github_link: Faker::Internet.url, 
        skills: Faker::ProgrammingLanguage.name
    )
end



20.times do
    Project.create(
        name: Faker::App.name,
        description: Faker::Hacker.adjective, 
        repo_link: Faker::Internet.url, 
        languages: Faker::ProgrammingLanguage.name, 
        user_id: rand(1..45)
    )
end

10.times do
    Project.create(
        name: Faker::App.name,
        description: Faker::Hacker.adjective, 
        repo_link: Faker::Internet.url, 
        languages: 'Javascript', 
        user_id: rand(1..45)
    )
end

10.times do
    Project.create(
        name: Faker::App.name,
        description: Faker::Hacker.adjective, 
        repo_link: Faker::Internet.url, 
        languages: 'HTML/CSS', 
        user_id: rand(1..45)
    )
end

20.times do
    Project.create(
        name: Faker::App.name,
        description: Faker::Hacker.adjective, 
        repo_link: Faker::Internet.url, 
        languages: 'React', 
        user_id: rand(1..45)
    )
end






60.times do
    UserProject.create(
        user_id: rand(1..45), 
        project_id: rand(1..60)
    )
end




70.times do
    Task.create(
        name: Faker::Hacker.verb,
        description: Faker::Company.bs, 
        category: 'todo', 
        project_id: rand(1..60)
    )
end

70.times do
    Task.create(
        name: Faker::Hacker.noun, 
        description: Faker::Company.bs, 
        category: 'todo', 
        project_id: rand(1..60)
    )
end

70.times do
    Task.create(
        name: Faker::File.mime_type, 
        description: Faker::Markdown.random, 
        category: 'todo', 
        project_id: rand(1..60)
    )
end


