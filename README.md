# kol-curses
Library for various ways to interact with other players in kol. In this script you will ash implementations for using a lot of the "curse" items in kol (referred to here as items that you use on other players and named such because they mostly use curse.php)

# How to install
`svn checkout https://github.com/chunkinaround/kol-curses/branches/master/KoLmafia`

# Usage
This script does nothing for itself, rather its a library you can import into other ash scripts so you can do things such as send candy hearts with messages or use flavored foot oil on someone if you have them in your inventory. Just include a `import <ncurses.ash>` at the top of your scripts. Anyway here are the functions provided within:

## Item use on other players
 
`tagPlayer(item curseItem, string player)`
 
This is the most common option it should work for the following items (ones not tested were noted)
```
"KICK ME" sign
Bagged stuffed "L"
cartoon harpoon
cream pie
Disintegrating sheet music
eaves droppers
flavored foot massage oil
foam dart
glass of warm water
golden gum
golden gun
heart cozy
Heart necklace
jawbruiser
loaded serum blowgun #not tested
LOV Emotionizer
personal graffiti kit
plastic nightmare troll
Plus one
puppet strings
roll of toilet paper
rotten tomato #not tested
rubber spider
snowball
Telltale™ rubber heart
Time's arrow
Unmotivator: Crashed Meat Car
Unmotivator: Crashed Orca
Unmotivator: Success Warrior
WANG
warbear gyrocopter #not tested
warbear procedural hilarity drone
wind-up spider
```

Example `tagPlayer($item["KICK ME" sign],'123');` would put a kick me sign on player 123.

`shootMarshmallow(string player)`

Shoots a marshmallow at a player if you have a s'more gun and a marshmallow.

`sendHolidayFun(string player, string outermessage, string innermessage)`

Sends holiday fun, in a plain brown wrapper, to someone. Most likely causing them to get beat up.

## Messages to other players through items
### sendHeart(string heartColor, string player, string message1, string message2)

 Example being  `sendheart('white','123','a','b');` sends a white candy heart to player 123 with line 1 being the string a and line 2 being b.
 
### sendArrowgram(string player, string message)

Sends an arrowgram with message to a chosen player. Ex. `sendArrowgram('123','You Rock')`

### throwBrick(string player, string message)

Throws a brick at a player breaking a window in their house, or tent. ex `throwBrick('123', 'Your windows suck')`

### sendPeppermintgram(string player, string text0, string text1, string text2, string text3, string text4)

Sends a candy cane candygram to a player. ex. `sendPeppermintgram('123','line1','line2','line3','line4','line5')`

### sendCheerOGram(string player, string message)

Sends a cheer-o-gram to a player. ex `sendCheerOGram('123', 'Have a little holiday cheer')`

### spitball(string player, string message)

Shots a spitball at another player using chewable paper. ex `spitball('123','Here is your cheetoh')`

### sendFancyCalligraphy(string player, string message)

Sends a note Iggy Azalea would be proud of to a player using the fancy calligraphy pen. ex `sendFancyCalligraphy('123', 'Cup of Ace cup of Goose cup of Cris')`

### sendGingerCookie(string player, string text0, string text1, string text2)
Sends a personalizable gingerbread cookie to a player with your heartfelt gingermessage on it. ex. `sendGingerCookie('123','Bingo','Bango','Bongo')` 

### sendCoffeeMug(string player, string texta, string textb, string textc)

Sends a personalized coffee mug to the player of your choice. ex. `sendCoffeeMug('123','Goona','PVP','You')`

### sendSmokeSignal(string player, string message)

Sends a smoke signal from the tweedleporium (reachable by drinking a Drink Me potion). Note that each letter you send you must have a puff of smoke. ex `sendSmokeSignal('123', 'PAY BY LETTER')`

### throwABone(string player, string message)

Throw a throwing bone from the Haunted Sorority House at another player. ex. `throwABone('123', 'How u doin')`
