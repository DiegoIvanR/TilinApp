//
//  UIelements.swift
//  TilinApp
//
//  Created by gdaalumno on 05/12/23.
//

import SwiftUI

//protocolo (plantilla) view
struct UIelements: View {
    @State private var isToggleOn = true//cada que se actualice el valor se debe refreshear
    @State private var texto = ""
    var body: some View {
        //Shift + cmd + L da todas las opciones
        ScrollView { //VStack sirve para ir apilandolos uno denajo del otro, Hstack uno tras otro en la misma linea, ScrollView para scrolear
            Text("Hola")
            Text("Tilin")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(Color.purple)
            Circle()
                .frame(width: 100, height:100)
                .blur(radius: 10)
                .foregroundColor(Color.green)
                .position(x:300)
            Rectangle()
                .frame(height: 40)
            RoundedRectangle(cornerRadius: 20)
                .frame(height: 40)
            //$ la variable es de tipo state
            Toggle(isOn: $isToggleOn){
                Text("En clase")
            }
            TextField("Cuadro de texto", text: $texto)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .opacity(0.2))
        }
        .padding() //agrega el padding a todos los elementos dentro del scrollView
    }
}

struct UIelements_Previews: PreviewProvider {
    static var previews: some View {
        UIelements()
    }
}
