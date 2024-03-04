# Booksy: A Ruby on Rails Blogging platform about litterature

This Ruby on Rails application is a simple blogging platform that allows users to create, read, update, and delete articles. It features user authentication, article privacy settings, and the ability for users to comment on articles.

## Features

- **User Authentication**: Users can sign up, log in, and log out. Devise gem is used for authentication.
- **Article Management**: Authenticated users can create new articles, edit their articles, and delete them. Each article has a title, content, and a privacy setting.
- **Privacy Settings**: Articles can be marked as private or public. Private articles are only visible to the user who created them.
- **Comments**: Users can comment on articles. Each comment displays the email of the author, the comment body, and the timestamp of creation. Users can only edit or delete their own comments.

## Getting started

To get this application running on your local machine, follow these steps:

### Prerequisites

- Ruby (version as specified in `.ruby-version`)
- Rails (version 7.1.3.2 or newer)
- SQLite3 (or configured database in `config/database.yml`)

### Installation

1. Clone the repository:

   ```sh
   git clone git@github.com:ikramagic/Booksy.git
   cd Booksy
   ```

   ```sh
   ```

2. Install the required gems

   ```sh
   bundle install
   ```

3. Set up the database

   ```sh
   rails db:create db:migrate db:seed
   ```

4. Start the Rails Server

   ```sh
   rails server
   ```

5. Open your browser and navigate to http://localhost:3000.

## Usage

- **Visit the homepage**: The list of public articles and the option to sign in or sign up.
- **Sign up or log in**: To create, edit, or comment on articles.
- **Creating an article**: Once logged in, users can create articles through the 'Create article' link in the navbar.
- **Privacy settings**: Users can mark articles as private during creation or edit.
- **Commenting on articles**: Users can add comments to articles at the bottom of each article page.

## Contributing

Contributions are welcome, and any improvements or suggestions are appreciated. Feel free to fork the repository and submit a pull request.

## License

This project is open-sourced under the MIT License. See the LICENSE file for more details.
