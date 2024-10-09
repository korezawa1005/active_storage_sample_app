require 'open-uri'

Post.create!(
  title: "ノートパソコン",
  avatar: {
    io: URI.open("https://picsum.photos/id/1/200/300"),
    filename: "laptop.jpg"
  }
)

Post.create!(
  title: "風景",
  avatar: {
    io: URI.open("https://picsum.photos/id/17/200/300"),
    filename: "scenery.jpg"
  }
)
