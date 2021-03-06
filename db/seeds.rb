healthy = Trail.create!(name: 'healthy', description: 'eat better, sleep better, and do yoga')
spiritual = Trail.create!(name: 'spiritual', description: 'meditate, commune with nature')
culinary = Trail.create!(name: 'culinary', description: 'learn to cook, make more meals at home')

attend_yoga = Trailmarker.create!(name:'attend_yoga', description: "hot vinyasa baby!")
meditate = Trailmarker.create!(name: 'meditate', description: "try out new meditation studio")
acupuncture = Trailmarker.create!(name: 'acupuncture', description: "stick some needles in me")

pioneer = Badge.create(name: "Pioneer", description: "Created a new account", status: false)

chris = User.create!(name: "Chris", email: "chris@example.com", password: "example", password_confirmation: "example")
brigitte = User.create!(name: "Brigitte", email: "brigitte@example.com", password: "example", password_confirmation: "example")
brandon = User.create!(name: "Brandon", email: "brandon@example.com", password: "example", password_confirmation: "example")

