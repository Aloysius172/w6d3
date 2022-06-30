# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

leonardo = User.create(username: 'Leonardo da Vinci')
mona_lisa = Artwork.create(title: 'Mona Lisa', artist_id: leonardo.id, image_url: 'https://cdn.cnn.com/cnnnext/dam/assets/131107152744-mona-lisa.jpg')

van_gogh = User.create(username: 'Vincent van Gogh')
starry_night = Artwork.create(title: 'The Starry Night', artist_id: van_gogh.id, image_url: 'https://upload.wikimedia.org/wikipedia/commons/6/66/VanGogh-starry_night_ballance1.jpg')

friedrich = User.create(username: 'Caspar David Friedrich')
wanderer = Artwork.create(title: 'Wanderer above the Sea of Fog', artist_id: friedrich.id, image_url: 'https://upload.wikimedia.org/wikipedia/commons/b/b9/Caspar_David_Friedrich_-_Wanderer_above_the_sea_of_fog.jpg')

johannes = User.create(username:'Johannes Vermeer')
girl_with_pearl_earring = Artwork.create(title: 'Girl with a Pearl Earring', artist_id: johannes.id, image_url: 'https://empow-her.com/bing/beed68349122.html?p=1.43.594798.1.27.66.girl+with+one+pearl+earring+painting')

picasso = User.create(username:'Pablo Picasso')
guernica = Artwork.create(title: 'Guernica', artist_id: picasso.id, image_url: 'https://www.kingandmcgaw.com/prints/pablo-picasso/guernica-1937-188363')

ArtworkShare.create(viewer_id: leonardo.id, artwork_id: guernica.id)
ArtworkShare.create(viewer_id: van_gogh.id, artwork_id: wanderer.id)
ArtworkShare.create(viewer_id: johannes.id, artwork_id: mona_lisa.id)
ArtworkShare.create(viewer_id: picasso.id, artwork_id: wanderer.id)
ArtworkShare.create(viewer_id: johannes.id, artwork_id: starry_night.id)
ArtworkShare.create(viewer_id: picasso.id, artwork_id: mona_lisa.id)
ArtworkShare.create(viewer_id: friedrich.id, artwork_id: girl_with_pearl_earring.id)

Comment.create(commenter_id: leonardo.id, artwork_id: guernica.id, body: 'stupid' )
Comment.create(commenter_id: van_gogh.id, artwork_id: wanderer.id, body: 'goodbye' )
Comment.create(commenter_id: johannes.id, artwork_id: girl_with_pearl_earring.id, body: 'hello' )
Comment.create(commenter_id: leonardo.id, artwork_id: guernica.id, body: 'shut up' )

