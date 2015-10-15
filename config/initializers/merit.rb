Merit.setup do |config|

end

badges = [
  { id: 1, name: 'checked_in', custom_fields: { image: "/Icon Star.png" } },

  { id: 2, name: 'checked_inx2', custom_fields: { image: "/Icon Star.png" } },

  { id: 3, name: 'checked_inx3', custom_fields: { image: "/Icon Star.png" } },

  { id: 4, name: 'checked_inx4', custom_fields: { image: "/Icon Star.png" } },

  { id: 5, name: 'checked_inx5', custom_fields: { image: "/Icon Star.png" } },

  { id: 6, name: 'checked_inx6', custom_fields: { image: "/Icon Star.png" } },

  { id: 7, name: 'checked_inx7', custom_fields: { image: "/Icon Star.png" } },

  { id: 8, name: 'checked_inx8', custom_fields: { image: "/Icon Star.png" } },
]

badges.each do |badge|
  Merit::Badge.create!(badge)
end
