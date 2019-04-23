=begin

+++++ What is OOP pogramming?

- OOP is a programming paradigm that allows for a modular approach to writing software
- was first created as an alternative to procedural languages
  - because when programs became too large...
    - difficult to make modifications because of top-down structure
    - ripple effects
  
  - OOP was created as an alternative to this sequntial approach where instead ...
  - program becomes the interaction of many small parts

- Accomplished in OOP by organizing related chunks of code in their own 
  separate containers and are sectioned off from the rest of the code base.
  - so as the software becomes more complex this complexity can be more easily managed.

- So the basic premise is that we can create (instantiate) objects and expose them to behaviours
  that we define in classses 
  
  demostrate with example - create a class and methods
  
  class Student
    def initialize(name)
      @name = name
    end
    
    def learn; "I am learning"; end
  end
  
  freddy = Student.new("Freddy")
  
  p freddy.learn
  p freddy
  
  anne = Student.new("Anne")
  p anne

- As you can see we are able to build programs based on objects that exist in the real world
  - objects are represented by nouns so are easier to conceptualize.
  - Creating objects allow programmers to think at a higher level of abstraction
  
- In a nutshell:
Instead of a top down approach with lots of dependecies we create classes/objects 
and expose interfaces to interact w/ them

PROS:
- Modifying an OOP program is easier/safer because changes are encapsulated to a class or object.
- The interface methods to collaborate with a class or object can remain the same while the implementation changes.
- OOP proramming forces you to set up more indirection but that indirection gives us an opportunity to isolate concerns so they don't ripple across the entire codebase.

BENEFITS OF OOP:
1. Modularity: The source code for a class can be written and maintained independently of the source 
code for other classes. Once created, an object can be easily passed around inside the system.

2. Information-hiding: By interacting only with an object's methods, the details of its internal 
implementation remain hidden from the outside world.

3. Code re-use: If a class already exists, you can use objects from that class in your program. 
This allows programmers to implement/test/debug complex, task-specific objects, which you can then use in your own code.

4. Easy Debugging: If a particular object turns out to be a problem, you can simply remove it 
from your application and plug in a different object as its replacement. This is analogous to fixing mechanical problems in the real world. If a bolt breaks, you replace it, not the entire machine.

- CONS:
  - more indirection
    - harder to understand
  - longer and more complex
  - imbalance from focusing too much on nouns/objects
    - time/sequence and methods
  - can still have lots of dependencies if done wrong
  - slower, more resources
  - longer to plan/design and write

=end