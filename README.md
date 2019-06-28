# Journey - Twitter Clone

## Cloning the Repository

1. Beside the repository name, click and copy the clone URL (HTTPS) or via (SSH).
2. Open your terminal.
3. Change the current working directory to the location where you want the cloned directory to be made.
4. Type `git clone`, and then paste the URL you copied in Step 1.
5. Press Enter. Your local clone will be created.

## Installing Dependencies

1. Ensure that you set your Ruby version to `2.6.3` and your NodeJS to `10.15.3`. You can achieve this with a version manager like **asdf**.
2. Run the following commands on your terminal (Run within the project's folder):
    - `bundle install` - To install required gems
    - `yarn install` - To install frontend packages

## Getting Started

### Database

1. Use `bundle exec rails db:create` to automatically create your databases (both development and testing).
2. Afterwards, run `bundle exec rails db:migrate` to migrate the database tables.

### Usage

1. After *migrating*, start a new terminal instance or tab.
2. Next, run `bundle exec rails server` or `rails server` to start your local server.
3. Open any modern browsers available to you (Chrome, Firefox, Edge etc) and access the application by typing `http://localhost:3000` on your address bar.
