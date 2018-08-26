# Blocipedia

### Community Collaboration Wiki App

Community members can create, and edit markdown wikis relating to any collaborative projects.

### Checkout out the deployed version here:
https://young-meadow-21165.herokuapp.com/

## Project Features:

* Users can sign up for a free account by providing a user name, password and email
* Users can sign in and out of Blocipedia
* Users with a standard account, can create, read, update, and delete public wikis
* User roles available: standard, premium or admin
* Users can upgrade account from a free to a paid plan
* Premium users can create private wikis
* Users can edit wikis using Markdown syntax

## Built Using

### Languages and Frameworks:
* Ruby 2.2.1
* Rails 4.2.5
* Bootstrap

#### Databases:
* SQLite - Test, Development
* PostgreSQL - Production

#### Gems:
* SendGrid for email confirmation
* Devise for user authentication
* Pundit for user authorization
* Stripe for payment processing
* Figaro for secure configuration
* Redcarpet for Markdown formatting
* Faker for seeding fake data

## Setup and Configuration

#### Setup:
* Environment variables were set using Figaro and are stored in config/application.yml. 
* The config/application.example.yml file illustrates how environment variables should be stored for security. 

#### To run Blocipedia locally:
1. Clone the repository
2. Run bundle install
3. Create and migrate the database with rake db:create and rake db:migratecd
4. Start the server using rails server
5. Run the app on localhost:3000


 #### Made at [Bloc](http://bloc.io).
 ## By Riley Radoll
 https://www.linkedin.com/in/rileyradoll/
