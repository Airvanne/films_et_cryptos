# Films et Cryptomonnaies

Ce site n'est pas encore en production, mais vous pouvez le tester en local. Pour cela il vous faudra une clé d'API sur www.themoviedb.org, et ainsi mettre votre clé à la place de la mienne dans le fichier `app/services/search_movie.rb`

Ensuite dans votre terminal il vous faudra taper :

```$ git clone https://github.com/Airvanne/films_et_cryptos.git```

```$ rails db:create```

```$ rails db:migrate```

Allez dans la console grâce à `$ rails c` et lancez `StartScrap.new.perform`

Sortez de la console et lancez le serveur avec `$ rails s`

Dans votre navigateur allez sur localhost:3000 et recherchez les prix des cryptomonnaies et/ou de recherchez les infos sur vos films préférés.

## Pr moé

semaine_6