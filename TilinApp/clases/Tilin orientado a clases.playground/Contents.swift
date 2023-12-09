/*import Foundation

//class es referencia no instancia
class PersonaClass{
    var nombre: String = ""// = "yo"
    var edad: UInt = 0
    
    init(nombre:String, edad: UInt){
        self.nombre = nombre
        self.edad = edad
    }//pide los valores para crear el objeto
    
}

var persona1 = PersonaClass(nombre: "Diego", edad: 18)
var persona2 = persona1 //no se copian los datos y creando una nueva instancia, lo que se modifique en persona2 modifica a ambas
persona2.nombre = "Pepe"
print("Persona1: nombre \(persona1.nombre), edad \(persona1.edad)")
print("Persona2: nombre \(persona2.nombre), edad \(persona2.edad)")

struct PersonaStruct{
    var nombre: String = ""// = "yo"
    var edad: UInt = 0
    
    init(nombre:String, edad: UInt){
        self.nombre = nombre
        self.edad = edad
    }//pide los valores para crear el objeto
    mutating func cambiarNombre(nuevo_xd nombre: String) -> String{
        let viejo = self.nombre
        self.nombre = nombre //se le agrega mutating a la funcion porque cambia la variable, sino da error en el self.nombre
        return viejo
    }
}

var persona3 = PersonaStruct(nombre: "Joseph", edad: 20)
var persona4 = persona3 //no se copian los datos y creando una nueva instancia, lo que se modifique en persona2 modifica a ambas
persona3.nombre = "Giuseppe"
persona4.cambiarNombre(nuevo_xd: "tilin")

print("Persona1: nombre \(persona3.nombre), edad \(persona3.edad)")
print("Persona2: nombre \(persona4.nombre), edad \(persona4.edad)")
*/
