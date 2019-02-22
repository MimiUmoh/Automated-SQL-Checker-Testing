# Automated-SQL-Checker-Testing

### Description
For this project, we have created a cucumber-based testing framework Gherkin syntax to test an in-house Sparta Global automated SQL checker application. We have taken a Page Object Model approach by including separate pages for different parts of the application which allows the tests we create to be more reusable and maintainable in the future. Using our DRY approach to coding, we have collaborated successfully to create UI tests that check a successful login and completed assessment via the Student route.

### Languages
Ruby

### How to download
1. Copy/Clone the URL on GitHub
2. Open selected text editor
3. In selected text editor, open up in-built terminal and type 'git clone' followed by the URL copied from GitHub 

### Prerequisites
1. Create a .env file and include 
  EMAIL='moe@spartaglobal.com'
  PASSWORD='Password1'
2. 

### How to run tests
1. Open up terminal in cloned repository
2. ```Bundle install``` in terminal 
3. Use ```gem install cucumber``` if not already installed on device
4. Create a .env file in the top directory outside the features folder and include 
  EMAIL='moe@spartaglobal.com'
  PASSWORD='Password1'
5. Run ```cucumber``` in terminal
