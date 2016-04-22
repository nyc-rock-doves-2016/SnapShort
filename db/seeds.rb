User.create!(username: "Emily", email: "emily@emily.com", password: "abc123")

User.create!(username: "David", email: "david@david.com", password: "abc123")

User.create!(username: "Kevin", email: "kevin@kevin.com", password: "abc123")

Prompt.create!(title: "A babysitter is snooping around her employer's house and finds a disturbing photograph...", creator_id: 1)

Prompt.create!(title: "Bob Barker falls in love.", optional: "Have fun!", creator_id: 2)

Prompt.create!(title: "Identical twins, a party invitation, and a locked closet.", creator_id: 3)

Prompt.create!(title: "At first it’s like any other day. You wake up, shower, start to brew your morning cup of coffee, and that’s when you notice—outside the window, there’s nothing there. Just an endless black void. What happened? Where are you? How do you get back to reality?", optional: "Length: 500 words or fewer", creator_id: 1)

Short.create!(body: "Bob Barker looked at the spotty teapot in his hands and felt anxious.He walked over to the window and reflected on his sunny surroundings. He had always loved snooty Dallas with its wild, wonky waters. It was a place that encouraged his tendency to feel anxious.Then he saw something in the distance, or rather someone. It was the figure of Cuthbert Bogtrotter. Cuthbert was a cowardly deity with charming fingernails and beautiful fingers. Bob gulped. He glanced at his own reflection. He was a smart, charming, tea drinker with solid fingernails and handsome fingers. His friends saw him as a gleaming, gentle god. Once, he had even helped a breezy deaf person cross the road.But not even a smart person who had once helped a breezy deaf person cross the road, was prepared for what Cuthbert had in store today.The wind blew like sitting tortoises, making Bob ambivalent. As Bob stepped outside and Cuthbert came closer, he could see the pickled glint in his eye.I am here because I want affection, Cuthbert bellowed, in a bold tone. He slammed his fist against Bob's chest, with the force of 5397 pigeons. I frigging love you, Bob Barker.Bob looked back, even more ambivalent and still fingering the spotty teapot.Cuthbert, let's move in together, he replied. They looked at each other with confident feelings, like two regurgitated, resonant rabbits singing at a very admirable Valentine's meal, which had jazz music playing in the background and two mean uncles to the beat. Bob studied Cuthbert's charming fingernails and beautiful fingers. Eventually, he took a deep breath. I'm sorry, but I can't give you affection, he explained, in pitying tones. Cuthbert looked active, his body raw like a gifted, gloopy guillotine. Bob could actually hear Cuthbert's body shatter into 9834 pieces. Then the cowardly deity hurried away into the distance.Not even a cup of tea would calm Bob's nerves tonight.", creator_id: 3, prompt_id: 2)

Short.create!(body: "The day started normally for Henry Benedict. He took as shower, brushed his off white teeth with a pea sized amount of super whitening toothpaste with 25% more whitening crystals. He shaved off his mustache, because he overheard that it made him look like a child rapist. that offended him the most, the idea that he would be a CHILD rapist. What could a child do for him? They were weak! He much preferred the savory taste of sweat and struggle form his victims. But, whatever. He would follow his shave with a mediocre breakfast fortified with fiber and vitamins C,E,A and D. He would spend a few minutes after breakfast loathing the fact that his mother gave him two fucking first names as a name. He put on his dark shades given to him by his optometrist and his red-tipped walking cane. He forgot his hearing aid. I’m not sure why. He didn’t have anything in particular important on his mind. But, he also didn’t hear the attack from extra-terrestrials that made the entire earth dissipate, save the little clog of dirt on which he resided. He opened his door and didn’t noticed the significance of the darkness around him as he walked out into a void. Falling and walking for eternity.", creator_id: 3, prompt_id: 4)

Short.create!(body: "Of all the things in the universe, I like coffee the best. This morning that’s a good thing, because it also seems to be about the only thing in the universe. Outside my window is nothing but an infinity of pitch-black nothing. What have those demented little lawn gnomes done? No, I take that back; lawn gnomes are way smarter than them! Lawn gnomes know better than to destroy the whole universe! And to think my son wanted to let those people in the house.Ah well, there’s no option but to start again from scratch. I step out onto the porch and look around.Darkness and void. Check. “Let there be light.”", creator_id: 2, prompt_id: 4)


Vote.create!(votable_type: "Short", votable_id: 1, value: 1)

Vote.create!(votable_type: "Prompt", votable_id: 1, value: 1)

Comment.create!(body: "I can't determine Bob's motivation, I think you could develop that further.", commentable_id: 1, commentable_type: "Short")

Comment.create!(body: "I love this. It’s concise and quirky. It leaves me wanting more!", commentable_id: 3, commentable_type: "Short")


