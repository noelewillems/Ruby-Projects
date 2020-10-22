# Created by Noel Willems: general understanding of polymorphism in Ruby.
# Ruby does not have "abstract classes" like Java does. Therefore, it may be difficult to strictly define child classes of
# parent classes (in Java, classes that inherit from an abstract class MUST have the exact same methods). Therefore, while Java
# provides good ways of hiding things from users, Ruby may not do as well of a job at it. By itself, Ruby (without Rails or other 
# libraries) may make it more complicated to enforce security than OO-heavy languages like Java. 
# Ruby also does not provide private variables. All variables can be accessed with ".get"
# I think that BECAUSE Ruby is so dynamic and versatile, having abstract classes and private variables would interfere with this strength.

# Array of animals
zoo = Array[]

# Parent class
class Animal 
    # Color variable - changes based on animal
    @color = ""
    def setCol(color)
        @color = color
    end

    def getCol() 
        puts @color
    end
end

# Cow inherits from Animal
class Cow < Animal
    # Has its own method speak
    def speak()
        print "This cow says 'moo' and is "
    end
    # Calls super for color
    def setCol(color)
        super(color)
    end

    def getCol()
        super
    end
end

class Cat < Animal
    def speak()
        print "This cat says 'meow' and is "
    end
    def setCol(color)
        super(color)
    end
    def getCol()
        super
    end
end

class Horse < Animal
    def speak()
        print "This horse says 'neigh' and is "
    end
    def setCol(color)
        super(color)
    end
    def getCol()
        super
    end
end

cow = Cow.new
cow.setCol("black")
zoo.push(cow)

cat = Cat.new
cat.setCol("grey tabby")
zoo.push(cat)

horse = Horse.new
horse.setCol("blue roan")
zoo.push(horse)

zoo.each do |x|
    x.speak()
    x.getCol()
end



