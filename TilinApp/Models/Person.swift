//
//  Person.swift
//  TilinApp
//
//  Created by gdaalumno on 06/12/23.
//

import Foundation
 //llamarse igual que el archivo
struct Person {
    var nombre: String
    var profilePic: String
    var hobbies: [String]
    var projects: [Project]
    var socialMedia: [SocialMedia]
    var photos: [String]
}

extension Person {
    static let myProfile = Person(nombre: "Diego Iván R",
                                  profilePic: "https://i.postimg.cc/L63ddYrF/vaca-chida.jpg",
                                  hobbies: ["Escatear", "Fortnite", "Leer"],
                                  projects: Project.myProjecs,
                                  socialMedia: SocialMedia.mySocialMedia,
                                  photos: [])
}
