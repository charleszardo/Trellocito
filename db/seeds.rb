u1 = User.create(email: 'demo@example.com', password: 'password')
u2 = User.create(email: 'teacher@example.com', password: 'password')

b1 = u1.boards.create(title: 'Find an Awesome New Job')
b2 = u1.boards.create(title: 'Vacation')
b3 = u2.boards.create(title: 'Workout')

l1 = b1.lists.create(title: 'todo')
l2 = b1.lists.create(title: 'doing')
l3 = b1.lists.create(title: 'done')

c1 = l3.cards.create(title: 'update resume', description: 'update resume')
c2 = l3.cards.create(title: 'clean up github', description: 'clean up github')
c3 = l3.cards.create(title: 'write cover letters', description: 'write standard letter')

c4 = l1.cards.create(title: 'job search', description: 'find some sweet jobs')
c5 = l1.cards.create(title: 'attend meetups', description: 'go out and network!')
c6 = l1.cards.create(title: 'keep improving portfolio', description: 'keep improving it!')

c7 = l2.cards.create(title: 'learn angular', description: 'try out angular')
c8 = l2.cards.create(title: 'send applications out', description: 'send those applications out!')

i1 = c1.items.create(done: false, title: 'mocha')
i2 = c1.items.create(done: true, title: 'mocha')
i3 = c1.items.create(done: true, title: 'cookie')

b1.members = [u1]
b2.members = [u2]
b3.members = [u1, u2]
b1.save
b2.save
b3.save
