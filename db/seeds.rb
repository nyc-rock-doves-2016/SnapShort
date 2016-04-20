User.create!(username: "Test", email: "test@example.com", password: "password")

Prompt.create!(title: "prompt title", creator_id: 1)

Short.create!(body: "This is a body", creator_id: 1, prompt_id: 1)

Vote.create!(votable_type: "Short", votable_id: 1, value: 1)

Vote.create!(votable_type: "Prompt", votable_id: 1, value: 1)

Comment.create!(body: "this is a comment", commentable_id: 1, commentable_type: "Short")

Comment.create!(body: "this is a prompt comment", commentable_id: 1, commentable_type: "Prompt")
