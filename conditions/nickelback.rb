songs = [
    ['Nickelback', 'How You Remind Me'],
    ['Will.i.am', 'That Power'],
    ['Miles Davis', 'Stella by Starlight'],
    ['The Beatles', 'Lucy in the Sky with Diamonds'],
    ['The Books', 'There is no There There'],
    ['Miles Davis', 'Stella by Starlight'],
    ['The Books', 'Take Time'],
    ['Nickelback', 'Animals'],
    ['The Beatles', 'While my Guitar Gently Weeps'],
    ['nickelback', 'Animals'],
    ['The Beatles', 'While my Guitar Gently Weeps'],
    ['The Books', 'The Lemon of Pink'],
]


# Using array manipulation methods, 
# create a new array that contains all songs that were not performed by Nickelback

no_nickelback = songs.select { |song| song[0].downcase != 'nickelback' }
p no_nickelback

