Merit.setup do |config|

end

badges = [
  { id: 1, name: 'checked_in',
    custom_fields: {image: "/shooting-star.png"} },
  { id: 2, name: 'checked_inx2',
    custom_fields: {image: "/ruby heart.png"} }
]

badges.each do |badge|
  Merit::Badge.create!(badge)
end
