Merit.setup do |config|

end

badges = [
  { id: 1, name: 'checked_in',
    custom_fields: { image: "/squirrel.jpeg" } },
  { id: 2, name: 'checked_inx2',
    custom_fields: { image: "/leopard.jpeg" } },
  { id: 3, name: 'checked_inx3',
    custom_fields: { image: "/doggy.jpeg" } },
  { id: 4, name: 'checked_inx4',
    custom_fields: { image: "/flamingo.jpeg" } }
]

badges.each do |badge|
  Merit::Badge.create!(badge)
end
