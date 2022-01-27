//MARK: Initializers
//MARK: Custom Initializers
class Rectangle {
    var lenght: Int
    var breadth: Int
    var area: Int
    //custom initializer which caculate area
    init(l lenght: Int,b breadth: Int) {
        self.lenght = lenght
        self.breadth = breadth
        self.area = lenght * breadth
    }
    //custom initializer which caculate area
    init(area: Int, lenght: Int){
        self.area = area
        self.lenght = lenght
        self.breadth = area/lenght
    }
}

let rectangleObj = Rectangle(l: 10, b: 4)
print("Custom init : with init(lenght and breadth)")
print("lenght: \(rectangleObj.lenght) breadth: \(rectangleObj.breadth) Area: \(rectangleObj.area)")
print()
let rectangleObj1 = Rectangle(area: 20, lenght: 5)
print("Custom init : with init(area and lenght)")
print("lenght: \(rectangleObj1.lenght) breadth: \(rectangleObj1.breadth) Area: \(rectangleObj1.area)")
print()

//MARK: default Initializers
class Subject {
    var name: String = "null"
    var marks: Int = 0
}

print("Default initializer")
let subjectObj = Subject()
print("Subject name: \(subjectObj.name)")
print()

//MARK: Memberwise Initializers (value type)
struct Table {
    var noOFLegs: Int = 0
    var height: Double
    var width: Double

    func printDescription() {
        print("No of legs: \(noOFLegs), Height: \(height), Width: \(width)")
    }
}
print("Memberwise Initializers")
let tableObj = Table( height: 4.5, width: 2.9)
tableObj.printDescription()
print()

//MARK: Designated And Convenience Initializers
class Cake {
    var quantity: Int
    var nameOnCake: String
    //designated init
    init(quantity: Int, nameOnCake: String) {
        self.quantity = quantity
        self.nameOnCake = nameOnCake
    }
    
    func printDescription() {
        print("Quantity of Cake: \(quantity), Name on Cake: \(nameOnCake)")
    }
    
    //convenience init
    convenience init(nameOnCake: String) {
        self.init(quantity: 1, nameOnCake: nameOnCake)
    }
}
print("Designated Initializer")
let cakeObj = Cake(quantity: 2, nameOnCake: "Happy BirthDay,Test")
cakeObj.printDescription()
print("Convenience Initializers")
let cakeObj1 = Cake(nameOnCake: "Happy BirthDay, Test2")
cakeObj1.printDescription()
print()

//MARK: Failable Initializers
class Food {
    var name: String
    var price: Double
    //failable init
    init?(name: String, price: Double) {
        if price>=0 {
            self.name = name
            self.price = price
        }else{
            return nil
        }
    }
    
    func printDescription() {
        print("Food name: \(name), price: \(price)")
    }
}

print("Failable Initializers")
let foodObj = Food(name: "Rice", price: -90.00)
if foodObj == nil {
    print("Unable to create instance")
}
foodObj?.printDescription()
print()

//MARK: Deinitialization
class Class{
    static var deskOccupied: Int = 0
    static func studentGoesOut() {
        self.deskOccupied -= 1
    }
    func StudentInClass() {
        print("Students Count in class: \(Class.deskOccupied)")
    }
}

class Student {
    var name: String
    init(name: String){
        self.name = name
        print("Student is initialized with name: \(name)")
        Class.deskOccupied += 1
    }
    
    func printName() {
        print("Name: \(name)")
    }
    
    deinit {
        print("\(name) Student is Deinitialized")
        Class.studentGoesOut()
    }
    
}
print("Deinitialization")
let classObj = Class()
func checkDeinit() {
    let studentObj = Student(name: "Test Name")
    studentObj.printName()
    classObj.StudentInClass()
}
checkDeinit()
classObj.StudentInClass()
print()

//MARK: Optional chaining
class Person {
    var name: Name?
    func getBloodGroup()->String? {
        if name == nil {
            return nil
        }
        return "b+"
    }
}
class Name {
    var firstName: String
    var lastName: String
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}
print("Optional chaining")
let personObj = Person()
personObj.name = Name(firstName: "Fname", lastName: "Lname")
let name = personObj.name?.firstName
print("Name: \(name ?? "No name found")")
let bloodGroup = personObj.getBloodGroup()?.uppercased()
print("Blood Group: \(bloodGroup ?? "Not found")")
