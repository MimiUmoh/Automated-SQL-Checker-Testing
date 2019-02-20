# Automated-SQL-Checker-Testing

### Description
For this project, we have created a cucumber-based testing framework Gherkin syntax to test an in-house Sparta Global automated SQL checker application. We have taken a Page Object Model approach by including separate pages for different parts of the application which allows the tests we create to be more reusable and maintainable in the future. Using our DRY approach to coding, we have collaborated successfully to create UI tests that check a successful login and completed assessment via the Student route.

### Languages
Ruby

### How to download
1. Copy/Clone the URL on GitHub
2. Open selected text edit
3. In selected text editor, open up in-built terminal and type 'git clone' followed by the URL copied from GitHub 

### How to run tests
1. Open up terminal in cloned repository
3. ```Bundle install``` in terminal 
4. Use ```gem install cucumber``` if not already installed on device
2. Run ```cucumber``` in terminal

### Challenges
1. Creating instance variables and attribute accessors to store the error message string and then using those variables within the tests
2. Creating a POM

### Learning points
1. Better understanding of how to apply the gherkin syntax within cucumber in order to create UI tests
2. Greater knowledge of storing strings within attribute accessors and applying them to the UI tests 
3. How to target specific elements within a web page using IDs