Merit.setup do |config|

end

badges = [
  { id: 1, name: 'checked_in', description: 'heyyyy', custom_fields: { image: "/trainer1.png" } },

  { id: 2, name: 'checked_inx2', description: 'Lithe Leopard',
    custom_fields: { image: "/trainer2.png" } },
  { id: 3, name: 'checked_inx3', description: 'Good Posture Dog',
    custom_fields: { image: "/trainer3.png" } },
  { id: 4, name: 'checked_inx4', description: 'Flamingo!',
    custom_fields: { image: "/trainer4.png" } },
  { id: 5, name: 'checked_inx5', description: 'Flamingo!',
    custom_fields: { image: "/trainer5.png" } },
  { id: 6, name: 'checked_inx5', description: 'Flamingo!',
    custom_fields: { image: "/trainer6.png" } },
  { id: 7, name: 'checked_inx5', description: 'Flamingo!',
    custom_fields: { image: "/trainer7.png" } },
  { id: 8, name: 'checked_inx5', description: 'Flamingo!',
    custom_fields: { image: "/trainer8.png" } },
]

badges.each do |badge|
  Merit::Badge.create!(badge)
end
