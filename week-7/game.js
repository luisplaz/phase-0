 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Defeat Dr Evil in rock, papper, scissor game.
// Goals: Obtain 2 wins of RPS in 3 games against Dr Evil.
// Characters: Austin Powers, Dr Evil
// Objects: Dr Evil, Austin Powers
// Functions: Roll RPS, Use Mojo.


// Create at least 2 objects with properties
// Create at least 2 functions that interact with those objects by adding or modifying the object's properties
// Call each function (invoke the function) Make sure the output is actually what you expect!

// Pseudocode
// Start game with a new Austin Powers and a Dr Evil.
// Roll in game to obtain rock paper or scissors
// If the element obtained is scissors and Dr Evil rolled rock you lose
// Else if Dr Evil rolled paper you win
// Else its a tie and you can use your mojo to convince Dr Evil you won.
// Same happens for other RPS rules.
//
//

// Initial Code

var austin_Powers = new player_1("Austin Powers", 3, "");
var dr_Evil = new player_2("Dr Evil", 3, "");

var RPS = ["rock","paper","scissors"]

function player_1(name,health,hand)
{
  this.name = name;
  this.health = health;
  this.hand = hand;
}

function player_2(name,health,hand)
{
  this.name = name;
  this.health = health;
  this.hand = hand;
}

function roll(object,array)
{
  object.hand = array[Math.floor(Math.random() * (3 - 0) + 0)];
}

function compare(object_1,object_2)
{
  if (object_1.hand == "scissors"){
    if (object_2.hand == "rock")
    {
      console.log("You used " + object_1.hand + " on Dr. Evil's " + object_2.hand + "\nYou Lose...");
      object_1.health -= 1;
    }
    else if (object_2.hand == "paper")
    {
      console.log("You used " + object_1.hand + " on Dr. Evil's " + object_2.hand + "\nYou Win...Groooovy baby!!!");
      object_2.health -= 1;
    }
    else
    {
      console.log("You used " + object_1.hand + " on Dr. Evil's " + object_2.hand + "\nYou Tieeeddd...");
    }
  }else if (object_1.hand == "rock"){
    if (object_2.hand == "paper")
    {
      console.log("You used " + object_1.hand + " on Dr. Evil's " + object_2.hand + "\nYou Lose...");
      object_1.health -= 1;
    }
    else if (object_2.hand == "scissors")
    {
      console.log("You used " + object_1.hand + " on Dr. Evil's " + object_2.hand + "\nYou Win...Groooovy baby!!!");
      object_2.health -= 1;
    }
    else
    {
      console.log("You used " + object_1.hand + " on Dr. Evil's " + object_2.hand + "\nYou Tieeeddd...");
    }
  }else if (object_1.hand == "paper"){
    if (object_2.hand == "scissors")
    {
      console.log("You used " + object_1.hand + " on Dr. Evil's " + object_2.hand + "\nYou Lose...");
      object_1.health -= 1;
    }
    else if (object_2.hand == "rock")
    {
      console.log("You used " + object_1.hand + " on Dr. Evil's " + object_2.hand + "\nYou Win...Groooovy baby!!!");
      object_2.health -= 1;
    }
    else
    {
      console.log("You used " + object_1.hand + " on Dr. Evil's " + object_2.hand + "\nYou Tieeeddd...");
    }
  }
}

function done() {

  if (austin_Powers.health == 0)
  {
    console.log('You failed Austin now your mojo and the world are gone...');
  }
  else if (dr_Evil.health == 0)
  {
    console.log('Great job Austin you saved your mojo and the world');
  }
  else
  {

  }

  process.exit();
}

//-------------------------------------------------------------------------------------------------------------------------//


  console.log("Dr Evil has initiated laser sequence....You can only stop him by beating him in Rock, Paper and Scissors as wiiiierd as it may sound");
  console.log("Shall we save the World Austin? (Yes/No)");

  process.stdin.resume();
  process.stdin.setEncoding('utf8');
  var util = require('util');

  process.stdin.once('data', function (text) {
    if (text === 'Yes\n' || text === 'yes\n' || text === 'YES\n' )
    {
      console.log('Let the games begin');
      var readline = require('readline'),
      rl = readline.createInterface(process.stdin, process.stdout);

      while (austin_Powers.health > 0 && dr_Evil.health > 0)
      {
            roll(austin_Powers,RPS);
            roll(dr_Evil,RPS);
            console.log(compare(austin_Powers,dr_Evil));
            console.log("Your health: " + austin_Powers.health + " Dr Evils health: " + dr_Evil.health);
      }
      done();
      }
      else
      {
      done();
      }
  })


// Refactored Code

// Did not know where to refactor code at this moment.


// Reflection

//What was the most difficult part of this challenge?

//The most difficult part was handling the input.

// What did you learn about creating objects and functions that interact with one another?

//I really didnt learn anything new mostly solidified previous knowledge.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

//......

// How can you access and manipulate properties of objects?
// 
//You can access them just by typing the object and the property you want to access like so: object.property. You can assign new values to these
//properties if desired as well as delete them or add more properties.