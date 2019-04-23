class Pet
  attr_reader :type, :name
  
  def initialize(type, name, status='unadopted')
    @type = type
    @name = name
    @status = status
  end
  
  def to_s
    "a #{type} named #{name}"
  end
end

class Owner
  attr_accessor :name, :pets

  def initialize(name)
    @name = name
    @pets = []
  end

  def number_of_pets
    pets.size
  end

  def add_pet(pet)
    pets << pet
  end
end

class Shelter
  attr_reader :owners, :unadopted_pets

  def initialize
    @owners = []
    @unadopted_pets = []
  end

  def adopt(owner, pet)
    owners << owner unless owners.include?(owner)
    owner.add_pet(pet)
  end
  
  def rescue_pet(pet)
    unadopted_pets << pet
  end

  def print_unadopted
    puts "The shelter has the following pets available for adoption:"
    unadopted_pets.each do |pet|
      puts pet
    end
  end

  def print_adoptions
    owners.each do |owner|
      puts "#{owner.name} has the following pets:"
      owner.pets.each do |pet|
        puts pet
      end
      puts ''
    end
  end
end

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new

shelter.rescue_pet(butterscotch)
shelter.rescue_pet(pudding)
shelter.rescue_pet(sweetie)

shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)

shelter.print_adoptions
shelter.print_unadopted
