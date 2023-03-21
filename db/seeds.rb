# Frozen_string_literal: true

CrewMember.destroy_all
Production.destroy_all

puts 'Seeding... 🌱'
Production.create(
  [
    {
      title: 'The Last of Us',
      genre: 'Thriller',
      budget: 1_000_000,
      image:
        'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/uKvVjHNqB5VmOrdxqAt2F7J78ED.jpg',
      description:
        'Twenty years after modern civilization has been destroyed, Joel, a hardened survivor, is hired to smuggle Ellie, a 14-year-old girl, out of an oppressive quarantine zone. What starts as a small job soon becomes a brutal, heartbreaking journey, as they both must traverse the United States and depend on each other for survival',
    },
    {
      title: 'Winnie the Pooh',
      genre: 'Thriller',
      budget: 100_000,
      image:
        'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ewF3IlGscc7FjgGEPcQvZsAsgAW.jpg',
      description:
        'Christopher Robin is headed off to college and he has abandoned his old friends, Pooh and Piglet, which then leads to the duo embracing their inner monsters.',
    },
    {
      title: 'Cocaine Bear',
      genre: 'Comedy',
      budget: 35_000_000,
      image:
        'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/gOnmaxHo0412UVr1QM5Nekv1xPi.jpg',
      description:
        'Inspired by a true story, an oddball group of cops, criminals, tourists and teens converge in a Georgia forest where a 500-pound black bear goes on a murderous rampage after unintentionally ingesting cocaine.',
    },
    {
      title: 'No Way Home',
      genre: 'Superhero',
      budget: 200_000_000,
      image:
        'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/uJYYizSuA9Y3DCs0qS4qWvHfZg4.jpg',
      description:
        'Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a super-hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.',
    },
    {
      title: 'Creed II',
      genre: 'Action',
      budget: 50_000_000,
      image:
        'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/v3QyboWRoA4O9RbcsqH8tJMe8EB.jpg',
      description:
        "Between personal obligations and training for his next big fight against an opponent with ties to his family's past, Adonis Creed is up against the challenge of his life.",
    },
    {
      title: 'Creed II',
      genre: 'Epic',
      budget: 500_000_000,
      image:
        'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/m7ta0kNg2ONvnBFF76miVvbWK1V.jpg',
      description:
        'The Targaryen dynasty is at the absolute apex of its power, with more than 15 dragons under their yoke. Most empires crumble from such heights. In the case of the Targaryens, their slow fall begins when King Viserys breaks with a century of tradition by naming his daughter Rhaenyra heir to the Iron Throne. But when Viserys later fathers a son, the court is shocked when Rhaenyra retains her status as his heir, and seeds of division sow friction across the realm.',
    },
    {
      title: 'Nosferatu',
      genre: 'Action',
      budget: 19_055,
      image:
        'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/zx24O7VAs6NbJhiIrUhWysAiHS0.jpg',
      description:
        'The mysterious Count Orlok summons Thomas Hutter to his remote Transylvanian castle in the mountains. The eerie Orlok seeks to buy a house near Hutter and his wife, Ellen. After Orlok reveals his vampire nature, Hutter struggles to escape the castle, knowing that Ellen is in grave danger',
    },
  ],
)

puts 'Done 🤡'

30.times do
  CrewMember.create(
    [
      {
        name: Faker::Name.name,
        job_title: %w[Stagehand Producer Extras Assistants Direcror].sample,
        salary: [10_000, 23_000, 3000, 43_000, 56_000, 2300].sample,
        production: Production.all.sample,
      },
    ],
  )
end
