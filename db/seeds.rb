# Hi!, use the rails dev:setup command to create data.

# Create Users
PASSWORD = 123_456

wes = User.create!(first_name: "Wes", last_name: "Pires", email: "wes@gmail.com", password: PASSWORD, password_confirmation: PASSWORD)

# Create Deposit and Withdraw
post_body = <<-END
  Pokémon é uma franquia de jogos eletrônicos, desenhos animados, mangás e outros produtos de mídia que se tornou um fenômeno cultural desde sua criação em 1996 pela Nintendo. A franquia é centrada em criaturas fictícias conhecidas como Pokémon, que os jogadores podem capturar, treinar e usar para batalhar uns contra os outros.

Os jogos Pokémon foram lançados originalmente para o console Game Boy, e desde então foram lançados em várias plataformas, incluindo Nintendo DS, Nintendo 3DS e Nintendo Switch. Cada jogo apresenta uma nova região para explorar, com novos Pokémon a serem descobertos e capturados.

Além dos jogos, a franquia Pokémon também inclui uma série de animação de longa duração, filmes, mangás, jogos de cartas colecionáveis ​​e muitos outros produtos de mídia. A série de animação é particularmente popular e segue as aventuras do treinador de Pokémon Ash Ketchum e seus amigos enquanto eles viajam pelo mundo Pokémon, batalham outros treinadores e tentam se tornar os melhores treinadores de Pokémon.
END

wes_post =  Post.create!(title: "Case Seeds 02", body: post_body, user_id: wes.id) 
Tag.create(name: "chatGPT", post_id: wes_post.id)