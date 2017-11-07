## Travel Bug App - Capstone Project

<h3>By Charles McQueen (WDI 20)</h3>

- Link To Deployed Site: https://cmcqueen1987.github.io/my-travel-app-ember-frontend/#/

- Link to Backend-Api Deployed Site: https://my-travel-app-capstone.herokuapp.com/
- Link to Frontend Repository: https://github.com/cmcqueen1987/my-travel-app-ember-frontend

## Project Wireframe, ERD and User Stories:

- Link to Wireframe - https://i.imgur.com/2lk1g7n.jpg
- Link to ERD - https://i.imgur.com/6exP0Cl.jpg

## User Stories

- A user can sign-up and sign-in with a username/email and a password
- A user can change their password and signout of their profile
- A user can create a list of countries they have visited and have their list save everytime they log-in and log-out
- A user can add countries to their list anytime
- A user can edit the countries on their list anytime
- A user can delete counties from their list anytime


## About My App!

Travel Bug is designed for travel hungry users to be able to create a list of countries around the world they have traveled to. The user will be promped to click the add a country button and then fill in the correct fields. Once the fields have been filled and the add country button is submitted, the user can see their added country below. A user also has the ability to alter their list by editing their countries as well as delete any countries they may have added by mistake. This is a simple one to many relationship idea (A user can have many countries)

This application is mirrored from my first travel application project except this time around I decided to build it using Ember.js. I wanted to try and build my travel app using ember because it is currently the most popular javascript framework and would be great practice. I really enjoyed building this project using ember and look forward to building more apps with the framework soon!

## Steps Taken to Complete the Project / Development Process

- Drew up a couple of different wireframes as well as an ERD to prep for my project.
- Set up a personal workflow schedule with deadlines in which I wanted to hit. Also made a personal requriements checklist to help keep me organized.
- Made sure I could deploy the basic ember auth template to use as my front end frame.
- Used Heroku app to help create backend.
- wrote my backend using rails where I was successfully able to create migrations. I used my project 2 rails api for reference as well as the Listr api.
- After creating a basic backend I then switched to the front end and began following commits from the lesson starting with the routes.
- Slowly and methodically build my ember app carfully following commits by generating models, components, routes, serializers to create CRUD actions for countries.

** The steps taken above were not in order all of the time as I did jump around a bit from my front and back end. This was a difficult project from start to finish, but was a great experience and will continue to use ember.


## API end-points

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| DELETE | `/sign-out/:id`        | `users#signout`   |
| PATCH  | `/change-password/:id` | `users#changepw`  |
| GET    | `/countries`           | `countries#index` |
| POST   | `/countries`           | `countries#create`|
| GET    | `/countries/:id`       | `countries#show`  |
| PATCH  | `/countries/:id`       | `countries#update`|
| DELETE | `/countries/:id`       | `countries#destroy` |

## Resources Used to Help Me

- Class Notes
- Listr App
- Github
- Stack Overflow
- MDN
- ATOM


## Technologies Used to Create Project

- HTML
- CSS
- Javascript
- Ember
- Ruby
- Rails
- Git
- Heroku
- AJax


## Unsolved Problems

I was able to complete the basic crud actions for my app. I really wanted to add a notes section for each country and was even able to create the route needed, but had trouble posting the notes. For the sake of time and with requirments at stake I decided to pass on this feature. I will continue to work on this project and complete the note feature.
