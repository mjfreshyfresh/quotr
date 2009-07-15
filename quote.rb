class Quote

  QUOTES = ["The problem with guessing games is you win a bunch of candy corn, and who the hell wants that.",
  "You can teach a man to fish, Or you can give him a moldy fish.",
  "That's a hope of a dream of a lie. (not sure if this is right?)",
  "X makes the baby Jesus cry.",
  "X should be killed with extreme prejudice.",
  "You can't use the word X unless you have a PhD in X. And then only sparingly.",
  "It's like glueing an (animal #1) to a (animal #2) and calling it (animal #3).",
  "I'm wrestling with an (adjective) (animal) with the ability to move around on (#) legs.",
  "Spelling w00t without zeros is like fishing with a Snuffelupagus.",
  "No amount of graph paper will save you.",
  "*sound effect* QUACK",
  "Why do computers always make the stupid problems hard?",
  "When you're below a certain age you can eat anything... like Tupperware.",
  "It's like trying to learn to walk by flying a 747 that's on fire!",
  "If candy fell from the sky we'd all get sick from eating too much.",
  "What happens  when you grow to be the size of google? Who gives a shit then you hire a group of scientist and they solve it.",
  "Old versions of Rails are like the Demon spawn!",
  "Makes you want to join the Cult of Jumping Off Something",
  "Clear your cache, kill an animal... do whatever it takes.",
  "XML is an acronym for \"our service doesn't work.\"",
  "That code should be thrown on the floor, set on fire, and jumped up and down on!",
  "There is no elegant way to piss in the street.",
  "X is a tiny wart on the giant ass of Craigslist.",
  "What's after satellite radio? The satellite newspaper? The satellite stone tablet?",
  "Like snowman taking a dump on a unicorn that's on fire",
  "Did [Humpty] get his deviated septum fixed?"]
  
  def self.random
    QUOTES.sort!{rand}.first
  end
    
end