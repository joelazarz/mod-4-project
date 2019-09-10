user1 = User.create(name: "John Smith" , email: "john.smith@gmail.com", password_digest: "12345", github_link: "https://github.com/", skills:"Javascript, Ruby")
user2 = User.create(name: "Joe Lazarz", email:"jlazarz@gmail.com", password_digest:"12345", github_link:"https://github.com/", skills:"Javascript, React")
user3 = User.create(name: "Adrienne Miranda", email:"adrienne@gmail.com", password_digest:"12345", github_link:"https://github.com/", skills:"Claw machine games, Javascript")

project1 = Project.create(name:"Javascript Project", description:"project description", repo_link:"https://github.com/", languages:"Javascript", user_id:2)
project2 = Project.create(name:"React Project", description:"project description", repo_link:"https://github.com/", languages:"React", user_id:3)

user_project1 = UserProject.create(user_id:1, project_id:1)
user_project2 = UserProject.create(user_id:2, project_id:1)
user_project3 = UserProject.create(user_id:3, project_id:2)

task1 = Task.create(name: "Set up CSS Library", description:"task description", category:"todo", project_id:1)
task2 = Task.create(name: "Add Event Listeners", description:"task description", category:"wip", project_id:2)
task3 = Task.create(name: "JS files", description:"task description", category:"wip", project_id:1)
task4 = Task.create(name: "Rails Backend", description:"task description", category:"complete", project_id:2)

user_task1 = UserTask.create(user_id:1,task_id:1)
user_task2 = UserTask.create(user_id:2,task_id:2)
user_task3 = UserTask.create(user_id:1,task_id:3)
user_task4 = UserTask.create(user_id:3,task_id:4)
