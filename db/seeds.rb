# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artist.create!([
  {
  name: "Pablo Picasso",
  biography: "Pablo Picasso, in full Pablo Diego José Francisco de Paula Juan Nepomuceno Crispín Crispiniano María Remedios de la Santísima Trinidad Ruiz Picasso, also called (before 1901) Pablo Ruiz or Pablo Ruiz Picasso, (born October 25, 1881, Málaga, Spain—died April 8, 1973, Mougins, France), Spanish expatriate painter, sculptor, printmaker, ceramicist, and stage designer, one of the greatest and most-influential artists of the 20th century and the creator (with Georges Braque) of Cubism. The enormous body of Picasso’s work remains, and the legend lives on—a tribute to the vitality of the “disquieting” Spaniard with the “sombre…piercing” eyes who superstitiously believed that work would keep him alive. For nearly 80 of his 91 years, Picasso devoted himself to an artistic production that contributed significantly to and paralleled the whole development of modern art in the 20th century.",
  profile_image_url: "https://upload.wikimedia.org/wikipedia/commons/b/b8/Portrait_de_Picasso%2C_1908.jpg"
  },
  {
  name: "Gustav Klimt",
  biography: "Gustav Klimt (July 14, 1862 – February 6, 1918) was an Austrian symbolist painter and one of the most prominent members of the Vienna Secession movement. Klimt is noted for his paintings, murals, sketches, and other objet d'art. Klimt's primary subject was the female body, and his works are marked by a frank eroticism. In addition to his figurative works, which include allegories and portraits, he painted landscapes. Among the artists of the Vienna Secession, Klimt was the most influenced by Japanese art and its methods. Early in his artistic career, he was a successful painter of architectural decorations in a conventional manner. As he began to develop a more personal style, his work was the subject of controversy that culminated when the paintings he completed around 1900 for the ceiling of the Great Hall of the University of Vienna were criticized as pornographic. He subsequently accepted no more public commissions, but achieved a new success with the paintings of his golden phase, many of which include gold leaf. Klimt's work was an important influence on his younger peer Egon Schiele.",
  profile_image_url: "https://upload.wikimedia.org/wikipedia/commons/d/d8/Klimt.jpg"
  },
  {
  name: "Giorgio de Chirico",
  biography: "Giorgio de Chirico (10 July 1888 – 20 November 1978) was an Italian artist and writer born in Greece. In the years before World War I, he founded the scuola metafisica art movement, which profoundly influenced the surrealists. His most well-known works often feature Roman arcades, long shadows, mannequins, trains, and illogical perspective. His imagery reflects his affinity for the philosophy of Nietzsche and for the mythology of his birthplace. After 1919, he became a critic of modern art, studied traditional painting techniques, and worked in a neoclassical or neo-Baroque style, while frequently revisiting the metaphysical themes of his earlier work.",
  profile_image_url: "https://upload.wikimedia.org/wikipedia/commons/e/e4/Giorgio_de_Chirico_%28portrait%29.jpg"
  }
  ])

  Artwork.create!([
    {
      title: "The Kiss",
      likes: 0,
      year: "1907",
      image_url: "https://upload.wikimedia.org/wikipedia/commons/f/f3/Gustav_Klimt_016.jpg",
      description: "Opulently gilded and extravagantly patterned, The Kiss, Gustav Klimt’s fin-de-siècle portrayal of intimacy, is a mix of Symbolism and Vienna Jugendstil, the Austrian variant of Art Nouveau. Klimt depicts his subjects as mythical figures made modern by luxuriant surfaces of up-to-the moment graphic motifs. The work is a highpoint of the artist’s Golden Phase between 1899 and 1910 when he often used gold leaf—a technique inspired by a 1903 trip to the Basilica di San Vitale in Ravenna, Italy, where he saw the church’s famed Byzantine mosaics.",
      artist_id: 2},
      {
        title: "Les Demoiselles d’Avignon",
        likes: 0,
        year: "1907",
        image_url: "https://upload.wikimedia.org/wikipedia/en/4/4c/Les_Demoiselles_d%27Avignon.jpg",
        description: "The ur-canvas of 20th-century art, Les Demoiselles d’Avignon ushered in the modern era by decisively breaking with the representational tradition of Western painting, incorporating allusions to the African masks that Picasso had seen in Paris's ethnographic museum at the Palais du Trocadro. Its compositional DNA also includes El Greco’s The Vision of Saint John (1608–14), now hanging in the Metropolitan Museum of Art. The women being depicted are actually prostitutes in a brothel in the artist's native Barcelona.",
        artist_id: 1
      },
      {
        title: "Ariadne",
        likes: 0,
        year: "1913",
        image_url: "https://d16kd6gzalkogb.cloudfront.net/magazine_images/Giorgio-de-Chirico-Ariadne-1913.jpg",
        description: "A statue of a slumbering Ariadne is in the foreground of this image of a desolate public square, rendered in de Chirico’s distinctive simple and broad forms. According to the Greek myth, Theseus abandoned his lover Ariadne on the island of Naxos while she slept. Ariadne acquired great personal symbolic meaning for de Chirico after he moved to Paris in 1911 and entered a period of isolation and loneliness. A dreamy escape into the classical past, the painting also serves as a retreat into de Chirico’s memories of his childhood in Greece.",
        artist_id: 3
      }])
