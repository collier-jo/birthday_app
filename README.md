## Birthday App ## 

https://github.com/makersacademy/course/blob/master/intro_to_the_web/post_challenges/birthday_app.md


Brief:: 

Your challenge is to build a web app that will ask the user for a name and birthday.

When the user submits the form, and depending on the current date, the app will either:

1 . wish the user happy birthday
2 . tell them how long they'll have to wait until their next birthday

## Motivation:
- To implement my understanding on how the we works 
Specifically:
- HTTP Requests and responses
- Servers 
- MVC pattern 

## Tech Stack 
- Ruby 
- RSPEC 
- HTML 
- CSS 
- Sinatra 

## Domain Mode
|Homepage    | 
|            | - Ask user for name /
|            | - Ask user for (dd) of dob/
|            |  - Ask user for (mm) of dob /
|            |  - Submit button /
|           | - Post form to /output 
|Outcome     | 
|            |  - If birthday : wish happy birthday <<<
|            |  - Else: Tell them how long til next birthday <<<<
|DOB class  | - Take homepage form information and output on outcome page 
|           | - Has to know the Time.new - use dependancy injection 
|           | - Birthday def //
||                         - Takes DOB input // 
||                         - Compares to current date  
||                         - if same 
||                            Wish happy birthday 
||                        - else 
||How long till 