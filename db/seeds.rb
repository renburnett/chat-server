ian = User.create(name: 'ian', email: 'i@i.com')
ren = User.create(name: 'ren', email: 'r@r.com')
krista = User.create(name: 'krista', email: 'k@k.com')

food = Conversation.create(topic: 'food')
dolphins = Conversation.create(topic: 'dolphins')

Message.create(content: 'I love pizza', is_read: true, conversation: food, user: krista)
Message.create(content: 'I also love pizza', is_read: true, conversation_id: 1, user: ian)
Message.create(content: 'I love dolphins', is_read: true, conversation_id: 2, user: ren)
Message.create(content: 'What are dolphins?', is_read: true, conversation_id: 2, user: ian)
