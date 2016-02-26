Share.destroy_all
User.destroy_all

u = User.create(
  username:   "onbeing",
  email:      "jas@example.com",
  password:   "abc123",
  img:        "../app/assets/images/default-profile-image.png",
  location:   "Los Angeles"
  )

Share.create(
  category:    "Art",
  link:        "https://artfiles.alphacoders.com/709/7091.jpg",
  title:       "Lavendar Field",
  description: "a photograph of Lavender",
  artist:      "unknown",
  user:         u
)

Share.create(
  category:    "Music",
  link:        "https://www.youtube.com/embed/9wCJPm19XYQ",
  title:       "Reckoner",
  description: "released 10/10/07",
  artist:      "Radiohead",
  length:      "4:50",
  album:       "In Rainbows",
  user:         u
)

Share.create(
  category:    "Coffeeshops",
  link:        "http://bricksandscones.com/images/center_img.png",
  title:       "Bricks and Scones",
  description: "Harry Potter",
  address:     "Larchmont",
  user:         u
)

Share.create(
  category:    "Tech",
  link:        "http://icdn2.digitaltrends.com/image/ardumower1-970x647-c.jpg",
  title:       "Ardumower",
  description: "This gadget mows the lawn for you.",
  user:         u
)


