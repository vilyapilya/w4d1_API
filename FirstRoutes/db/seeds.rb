# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: 'elf')
user2 = User.create(username: 'dwarf')
user3 = User.create(username: 'human')

art1 = Artwork.create(title: 'elf painting', image_url: 'elfpainting.com', artist_id: user1.id)
art2 = Artwork.create(title: 'dwarf painting', image_url: 'dwarfpainting.com', artist_id: user2.id)
art3 = Artwork.create(title: 'human painting', image_url: 'humanpainting.com', artist_id: user3.id)

share1 = ArtworkShare.create(artwork_id: art1.id, viewer_id: user2.id)
share2 = ArtworkShare.create(artwork_id: art1.id, viewer_id: user3.id)
share3 = ArtworkShare.create(artwork_id: art2.id, viewer_id: user1.id)
share4 = ArtworkShare.create(artwork_id: art3.id, viewer_id: user1.id)
share5 = ArtworkShare.create(artwork_id: art3.id, viewer_id: user2.id)
share6 = ArtworkShare.create(artwork_id: art3.id, viewer_id: user3.id)
