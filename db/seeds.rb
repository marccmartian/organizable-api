COLORS = ["green", "yellow", "orange", "red", "purple", "blue"]
USERS = [
  {
    username: "codeable",
    email: "codeable@mail.com",
    first_name: "User",
    last_name: "Test",
    password: "123456"
  }, 
  { 
    username: "codeable2",
    email: "codeable2@mail.com",
    first_name: "User2",
    last_name: "Test2",
    password: "123456"
  }
]


USERS.each do |user_data|

  user = User.create(user_data)

  user.boards.create(name: "Organizable", closed: false, color: "lime", starred: true)
  user.boards.create(name: "Codeable", closed: false, color: "red", starred: true)
  user.boards.create(name: "Portafolio", closed: false, color: "blue", starred: true)
  user.boards.create(name: "DOTA", closed: false, color: "orange", starred: false)
  user.boards.create(name: "Consulting", closed: false, color: "purple", starred: false)
  user.boards.create(name: "LinkedIn", closed: false, color: "pink", starred: false)
  user.boards.create(name: "Meet Ups", closed: false, color: "green", starred: false)
  user.boards.create(name: "Side Project", closed: false, color: "grey", starred: false)
  user.boards.create(name: "Others", closed: false, color: "sky", starred: false)

  user.boards.create(name: "Codeable Postulation", closed: true, color: "blue", starred: false)
  user.boards.create(name: "Odin Project", closed: true, color: "red", starred: false)

  user.boards.each do |board|
    COLORS.each {|color| board.labels.create(name:"", color: color) }

    red_label = board.labels.find_by(color: "red")
    red_label.name = "Urgent"
    blue_label = board.labels.find_by(color: "blue")
    blue_label.name = "Important"

    todo = board.lists.create(name: "To Do", pos: 1, closed: false)
    todo.cards.create(name: "Add Animations", desc: nil, pos: 1, closed: false)
    todo.cards.create(name: "Refactor functions", desc: nil, pos: 2, closed: false)
    a11y = todo.cards.create(name: "Improve a11y", desc: nil, pos: 4, closed: false)
    a11y.labels << blue_label

    doing = board.lists.create(name: "Doing", pos: 2, closed: false)
    login_logout = doing.cards.create(name: "Login & Logout", desc: nil, pos: 1, closed: false)
    login = login_logout.checklists.create(name: "Login", pos: 1)
    login_logout.labels << red_label
    login_logout.labels << blue_label
    login.check_items.create(name: "Analize api", pos: 1, completed: true)
    login.check_items.create(name: "Create HTML and CSS", pos: 2, completed: true)
    login.check_items.create(name: "Make fetch request", pos: 4, completed: false)

    logout = login_logout.checklists.create(name: "Logout", pos: 2)
    logout.check_items.create(name: "Analize api", pos: 1, completed: true)
    logout.check_items.create(name: "Create button", pos: 2, completed: true)
    logout.check_items.create(name: "Make fetch request", pos: 4, completed: false)

    doing.cards.create(name: "Board Component", desc: nil, pos: 2, closed: false)
    doing.cards.create(name: "List Component", desc: nil, pos: 4, closed: false)
    doing.cards.create(name: "Card Component", desc: nil, pos: 8, closed: false)
    doing.cards.create(name: "Checklist Component", desc: nil, pos: 16, closed: false)


    done = board.lists.create(name: "Done", pos: 4, closed: false)
    meeting = done.cards.create(name: "Team meeting", desc: "Talk with the team about the project", pos: 1, closed: false)
    meeting.labels << blue_label

  end
end