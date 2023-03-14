# Frozen_string_literal: true

CrewMember.destroy_all
Production.destroy_all

puts 'Seeding... 🌱'
Production.create(
  [
    {
      title: 'Carmen',
      genre: 'Opera',
      budget: 80_000,
      image:
        'https://cdn.shopify.com/s/files/1/0057/3728/3618/products/53a32cdb0f01c1138431947635c5c1fe_480x.progressive.jpg?v=1573613671'
    },
    {
      title: 'Cats',
      genre: 'Comedy',
      budget: 50_000,
      image:
        'https://cdn.shopify.com/s/files/1/0057/3728/3618/products/scan092_500x749.jpg?v=1663965332'
    },
    {
      title: 'Terminator',
      genre: 'Action',
      budget: 300_000,
      image:
        'https://cdn.shopify.com/s/files/1/0057/3728/3618/products/0ef9ae788e37c28023f50540549919e3_ce9c2c0a-d08e-4218-b313-6942e22efc15_500x749.jpg?v=1573585426'
    },
    {
      title: 'Mandalorian',
      genre: 'Sci-Fi',
      budget: 50_000,
      image:
        'https://cdn.shopify.com/s/files/1/0057/3728/3618/products/mandalorian.12.11_480x.progressive.jpg?v=1607720303'
    }
  ]
)

puts 'Done 🤡'

30.times do
  CrewMember.create(
    [
      {
        name: Faker::Name.name,
        job_title: %w[Stagehand Producer Extras Assistants Direcror].sample,
        salary: [10_000, 23_000, 3000, 43_000, 56_000, 2300].sample,
        production: Production.all.sample
      }
    ]
  )
end
