u1 = User.create(email: 'demo@example.com', password: 'password')
u2 = User.create(email: 'teacher@example.com', password: 'password')

b1 = u1.boards.create(title: 'Find an Awesome New Job')
b2 = u1.boards.create(title: 'Vacation')
b3 = u2.boards.create(title: 'Workout')

l1 = b1.lists.create(title: 'todo')
l2 = b1.lists.create(title: 'doing')
l3 = b1.lists.create(title: 'done')

c1 = l3.cards.create(title: 'resume', description: 'update resume')
c2 = l3.cards.create(title: 'github', description: 'clean up github')
c3 = l3.cards.create(title: 'cover letter', description: 'write standard letter')

c4 = l1.cards.create(title: 'search', description: 'find some sweet jobs')
c5 = l1.cards.create(title: 'meetups', description: 'go out and network!')
c6 = l1.cards.create(title: 'portfolio', description: 'keep improving it!')

c7 = l2.cards.create(title: 'new skills', description: 'try out angular')
c8 = l2.cards.create(title: 'apply', description: 'send those applications out!')
c9 = l2.cards.create(title: 'situps', description: 'ouchy')

i1 = c1.items.create(done: false, title: 'mocha')
i2 = c1.items.create(done: true, title: 'mocha')
i3 = c1.items.create(done: true, title: 'cookie')

b1.members = [u1]
b2.members = [u2]
b3.members = [u1, u2]
b1.save
b2.save
b3.save
