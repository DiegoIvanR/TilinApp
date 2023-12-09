/*
 import Foundation

for i in 0..<5{
    print(i)
}

let mateo = "eso tilin"
let xd = (mateo == "eso tilin") ? "xdn`t" : "xd"
print(xd)

var contador = 0
while contador < 5 {
    print(contador)
    contador += 1
}

let possibleNumber = "123"
let number = Int(possibleNumber)
/*
let name: String? = " "
if name != nil{
    print(name!)
} else {
    print("Unnamed")
}

let name: String? = ...
if let name{
    print(name) //si name no es un valor nulo, lo guarda en una variable del mismo nombre
} else {
    print("Unnamed")
}

let name: String? = ...
print(name ?? "Unnamed") //si es nil usa lo de la derecha

let name: String? = ...
guard let name else{
    return "Unnamed" //si no jala sale unnamed, si jala lo returna al final
}
return name

let name: String? = ...
let actualnName = name != nil ? name! : "Unnamed"
print(actualnName)
*/
var numero: Int = 10
func suma(parametro: Int) -> Int{
    return parametro + parametro
}
print(suma(parametro: 8))

func greet(name: String){
    print("Hello, \(name)")
}
greet(name: "John")

func greet1(_ name: String){
    print("Hello, \(name)")
}
greet1("Thom")

func pedirNombre() -> String{
    let nombre = "gerardo"
    return nombre ?? ""
}
var miNombre = pedirNombre()
print(miNombre)

func multiply(_ a: Int,_ b: Int) -> Int{
    return a*b
}
print(multiply(3, 43))

//numreo 1 es de tipo uno, numero 2 del segundo alv
let multiplicar: (Int, Int) -> Int = {(num1, num2) in return num1 * num2} //One-liners: Closures
print(multiplicar(10, 10))

let divide: (Float, Float) -> Float = {(num, den) in return num/den}
print(divide(10, 3))

var fullSyntax: Array<Int> = []
var shorthandSyntax: [Int] = [] //es la mas comun
var inferredSyntax = [1, 2, 3, 4]
var tenZeros = Array(repeating:0, count: 10)


var prueba: [Int] = []
print(prueba.first ?? "Unnamed")

var numbers = [5, 10, 15]
let first = numbers[0]
numbers.append(0)
numbers.append(20)
numbers[3] = 20
numbers.count
numbers.contains(10) //True or false
print(numbers)
print("Quitamos el ultimo nombre que era \(numbers.popLast()!)") //el 20 hace que imprima el valor retornado, sino impre una mamada medio rara

var fruits: Set<String> = ["Apple", "Orange", "Tomato", "Apple"]
print(fruits)
var vegetables: Set = ["Carrot", "Potato", "Tomato"]
fruits.insert("Grapes")
print(fruits)
vegetables.remove("Potato") // "Potato" (String?)
fruits.firstIndex(of: "Apple")
//vegetables.remove(at: 1)
let healthyFood = fruits.union(vegetables)
healthyFood.count
fruits.isEmpty

var fruits1 = [String: UInt]()
var vegetables1: [String: UInt] = [:]
fruits1["manzana"] = 5
vegetables1["broccoli"] = 2
let fruitNames = fruits1.keys //(Array)["manzana"]
let vegetablesCount = vegetables1.values //(Array)[2]


let numeros2 = [0, 1, 2, 3]
for number in numbers{
    print(number * 2)
}
/*
var fruits2: [String: Int]
for (key, value) in fruits2{
    print("\(key): \(value)")
}
for key in fruits.keys{
    print("\(key): \(fruits[key]!)")
}
*/
//enums clasifican datos con nombres especificos
//con case iterableel enum se hace iterable
enum Tabs: String, CaseIterable{
    case home = "house"
    case profile = "person.circle"
    case settings = "gear"
}

var currentTab: Tabs = .settings
currentTab.rawValue //gear

for tab in Tabs.allCases{
    print(tab)
    print(tab.rawValue)
}
enum Frutas: String{
    case platano = "Platanoide"
    case manzana = "Manzanaa"
}
var frutaFavoritaPrueba: Frutas = .manzana
print("Nose \(frutaFavoritaPrueba.rawValue)")
var frutaFavorita = Frutas.platano
print("Mi fruta favorita son \(frutaFavorita.rawValue)")


var alumnos: [String: String] = [
    "A01638923" : "Diego R",
    "A01644772" : "Mateo (Gamboa`s version)",
    "A04738384" : "Tilin",
]
print(alumnos.keys)
print(alumnos.values)
print(alumnos)
for(matricula, nombre) in alumnos{
    print(matricula, nombre)
}
*/

