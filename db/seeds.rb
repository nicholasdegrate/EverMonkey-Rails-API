User.destroy_all
NoteBook.destroy_all
Note.destroy_all
User.reset_pk_sequence
NoteBook.reset_pk_sequence
Note.reset_pk_sequence


nick = User.create!(
    username: "nick",
    email: 'nickdegrate@gmail.com',
    profile_image: ''
)

jeff = User.create!(
    username: "nick",
    email: 'nick@gmail.com',
    profile_image: 'https://images.unsplash.com/photo-1616627687031-229fa00cfe07?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'
)



learning = NoteBook.create!(
    name: 'Learning',
    user_id: nick.id,
    delete_object: false
)

learning1 = NoteBook.create!(
    name: 'Learning',
    user_id: jeff.id,
    delete_object: false
)


javascript = Note.create!(
    name: 'JavaScript',
    paragraph: 'As you are probably aware, both string and text save “string-type” information that you can freely write in. The difference between the two is how many characters you can put in these fields.
    ',
    priority: 0,
    note_book_id: learning.id,
    delete_object: false
)



java = AttachedFile.create!(
    name: 'JavaScript',
    file: 'iehaiofhdiaohfiawefwaf',
    note_id: javascript.id,
)


javascript0 = Note.create!(
    name: 'JavaScript',
    paragraph: 'As you are probably aware, both string and text save “string-type” information that you can freely write in. The difference between the two is how many characters you can put in these fields.
    ',
    priority: 0,
    note_book_id: learning.id,
    delete_object: false
)


javascript1 = Note.create!(
    name: 'JavaScript',
    paragraph: 'As you are probably aware, both string and text save “string-type” information that you can freely write in. The difference between the two is how many characters you can put in these fields.
    ',
    priority: 0,
    note_book_id: learning.id,
    delete_object: false
)



javascript3 = Note.create!(
    name: 'JavaScript',
    paragraph: 'As you are probably aware, both string and text save “string-type” information that you can freely write in. The difference between the two is how many characters you can put in these fields.
    ',
    priority: 0,
    note_book_id: 2,
    delete_object: false
)


javascript4 = Note.create!(
    name: 'JavaScript',
    paragraph: 'As you are probably aware, both string and text save “string-type” information that you can freely write in. The difference between the two is how many characters you can put in these fields.
    ',
    priority: 0,
    note_book_id: 2,
    delete_object: false
)


javascript5 = Note.create!(
    name: 'JavaScript',
    paragraph: 'As you are probably aware, both string and text save “string-type” information that you can freely write in. The difference between the two is how many characters you can put in these fields.
    ',
    priority: 0,
    note_book_id: 2,
    delete_object: false
)


javascript6 = Note.create!(
    name: 'JavaScript',
    paragraph: 'As you are probably aware, both string and text save “string-type” information that you can freely write in. The difference between the two is how many characters you can put in these fields.
    ',
    priority: 0,
    note_book_id: 2,
    delete_object: false
)