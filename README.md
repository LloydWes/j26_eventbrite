# EventBrite fait par Lloyd Westbury (@Lloyd sur Slack)

Lien Heroku

https://eventbritej26.herokuapp.com/

N'oublie pas d'ajouter ton propre fichier `.env` pour pouvoir tester les mails.

Pour cloner le projet :

`git clone https://github.com/LloydWes/j26_eventbrite.git`

Pour être sûr d'avoir les gems que j'ai

`bundle install`

Pour être sûr de ne pas avoir de conflit avec une bdd existante :

`rails db:drop` 

Pour recréer une bdd

`rails db:create`

Pour créer les tables

`rails db:migrate`

Pour remplir les tables

`rails db:seed`

Pour lancer le serveur

`rails s`

Pour avoir accès à l'index

`http://localhost:3000/`

Tout les `users` créé par le `seed` ont le **même mot de passe** "thp_test" (en minuscule)

![Une image](https://www.w3schools.com/w3css/img_lights.jpg)[]()


# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
