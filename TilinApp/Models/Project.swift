//
//  Project.swift
//  TilinApp
//
//  Created by gdaalumno on 06/12/23.
//

import Foundation

//aunque dos projectos sean iguales, seran distintas instancias
struct Project: Identifiable {
    let id: String = UUID().uuidString //Unico para siempre y en todas las ocasiones
    var title: String
    var description: String
    var rating: Float
    var photos: [String]
    
}

extension Project {
    static let myProjecs = [
        Project(title: "SwiftUI Course", description: "Nose", rating: 5, photos: []),
        Project(title: "battleship", description: "andrey se la rifo", rating: 5, photos: []),
        Project(title: "SwiftUI Course", description: "Nose", rating: 5, photos: []),
    ]
}
