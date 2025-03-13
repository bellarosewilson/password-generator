# sinatra-template

Sinatra Random Password Generator with Yo Momma Joke

1. Overview

This Sinatra web application generates a random password and, upon generation, also fetches a Yo Momma joke from an external API. The app provides a simple UI where users can request a new password, view it, and see a joke for entertainment.

2. Functional Requirements

2.1 Random Password Generation

Generates a 15-character-long random password.
Password includes:
Uppercase and lowercase letters (A-Z, a-z).
Numbers (0-9).
Special characters (!@#$%^&* etc.).
Users can request a new password via a button click.

2a Yo Momma Joke Integration

After generating the password, the application fetches a Yo Momma joke from a public API (e.g., https://api.yomomma.info/).
The joke is displayed below the generated password.

3. User Flow

User visits the homepage (/).
The page displays a button labeled "Generate Password".
When the user clicks the button:
A new password is generated.
A Yo Momma joke is fetched from the API.
Both are displayed on the page.
User can click the button again to generate a new password and joke.

4. API Integration

Yo Momma Joke API: The app makes a GET request to yomomma-api.herokuapp.com/ to fetch a joke in JSON format.
Example response: { "joke": "Yo momma so fat, when she sat on an iPod, she made the iPad!" }

5. Routes & Endpoints

Route	Method	Description
/	GET	Displays the homepage with the password generator UI
/generate_password	GET	Generates a new password and fetches a joke

6. UI & Frontend Requirements

Simple UI with:
A "Generate Password" button.
An area to display the generated password.
An area to display the joke.
Styling is minimal but clear for readability.

7. Error Handling

If the password fails to generate, display an error message: "Error generating password. Please try again."
If the joke API request fails, display a message: "Couldn't fetch a joke. Try again later."

8. Technologies Used

Backend: Sinatra (Ruby)
Frontend: ERB templates with basic CSS
External API: Yo Momma Joke API
Randomization: Ruby’s SecureRandom module for password generation

9. Future Enhancements

Allow users to customize password length and character set.
Provide options for joke categories.
Save + store generated passwords in session for later retrieval.

Use this repository to create new Sinatra apps. 

Optionally, to use `ActiveRecord` for database operations, add to the `app.rb`:

```ruby
require "sinatra/activerecord"
```

And in the `config/environment.rb` file add this code block:

```ruby
configure do
  # setup a database connection
  set(:database, { adapter: "sqlite3", database: "db/development.sqlite3" })
end
```
#test <script src="https://gist.github.com/bellarosewilson/01760c510220386c7a28d61767714973.js"></script>
