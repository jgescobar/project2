Share.destroy_all
User.destroy_all

Share.create(
  category:    "Art",
  link:        "https://art.alphacoders.com/arts/view/7091",
  title:       "Lavendar Field",
  description: "a photography of Lavendar",
  artist:      "unknown",
  user_id:     4
)

Share.create(
  category:    "Music",
  link:        "https://youtu.be/rOoCixFA8OI",
  title:       "Reckoner",
  description: "released 10/10/07",
  artist:      "Radiohead",
  length:      "4:50",
  album:       "In Rainbows",
  user_id:     4
)

Share.create(
  category:    "Coffeeshops",
  link:        "http://www.bricksandscones.com/",
  title:       "Bricks and Scones",
  description: "Harry Potter",
  address:     "Larchmont",
  user_id:     4
)

Share.create(
  category:    "Tech",
  link:        "http://www.digitaltrends.com/cool-tech/3d-printed-robotic-lawn-mower/",
  title:       "Ardumower",
  description: "This gadget mows the lawn for you.",
  user_id:     4
)

User.create(
  username:   "onbeing",
  email:      "jas@example.com",
  password:   "abc123",
  img:        "../app/assets/images/default-profile-image.png",
  location:   "Los Angeles"
  )
