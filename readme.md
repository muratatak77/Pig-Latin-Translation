# README

## Pig Latin Translation Engine
  We have a main Engine class in the application.

  Engine class our manager class. It provides requires other rules and classes according to our word situation.
  - Rules classes : 
    - RuleWay class maintain to add 'way' cases for words which first check in the main iteration in Engine. 
    - RuleAy class to handle a few cases. If word has 'qu' case, upcase or downcase and punctuations cases.
    - RuleWSuffix class run if we have final letter 'w' or 'W' in the current word.

### Requirements

* Ruby version - using currently : 
  - ruby 2.6.4p104 (2019-08-28 revision 67798) [x86_64-darwin18] / 
  - But if you have any old version older than the 2.6, most probably would work.
  
* How to run? 
    - After opening 'pig_latin_translation' project file, you can see 'main.rb' file. You should run it in a terminal console.

      - You can run this main.rb file  : 
        ```
          ruby main.rb 
        ```

      - After running you can see output : 
        ```
            Input : ["hello", "eat", "yellow", "eat world", "Hello", "Apples", "eat... world?!", "school", "quick", "she's great!", "HELLO", "Hello There"]
            Result : ellohay eatway yellowway eatway orldway Ellohay Applesway eatway... orldway?! oolschay ickquay e'sshay eatgray! ELLOHAY Ellohay Erethay
            ------------------------------------
            Apples > Applesway
            ------------------------------------
            ELLO > ELLOWAY
            ------------------------------------
            quick > ickquay
            ------------------------------------
            quiet > ietquay
            ------------------------------------
            squiet > ietsquay
            ------------------------------------
            Hello There > Ellohay Erethay
            ------------------------------------
            eat world > eatway orldway
            ------------------------------------
            Ello Eat > Elloway Eatway
            ------------------------------------
            the quick brown fox > ethay ickquay ownbray oxfay
            ------------------------------------
            she's great! > e'sshay eatgray!
            ------------------------------------
            tea... world?! > eatay... orldway?!
            ------------------------------------
            t.!ea... world?! > eat.!ay... orldway?!
        ```

* How to run the test suite
    - In the same folder (pig_latin_translation) , you can run test cases directly from terminal console: 

    - if you need run all test : 
    ```
      ruby tests/engine_test.rb
    ```

* Database creation
  - None

* Database initialization
  - None
