//
//  ContentView.swift
//  TilinApp
//
//  Created by gdaalumno on 05/12/23.
//

import SwiftUI
//tmb se puede crear una instancia de UIelements en content view, y content view en tilinApp
struct ContentView: View {
    var body: some View {
        TabView {
            ProfileNavigation(profile: Person.myProfile)
                .tag("profile") //todos los tabviews necesitan un tag
                .tabItem {
                    Label("My Profile", systemImage: "person.circle")
                }
            MySocialMedia(socialMedia: SocialMedia.mySocialMedia)
                .tag("socialMedia")
                .tabItem {
                    //shift cmL L, ultima pestaña son los iconos
                    Label("Social Media", systemImage: "flame.fill")
                }
            ProjectsList(projects: Person.myProfile.projects)
                .tag("projects")
                .tabItem {
                    Label("Projects", systemImage: "folder")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
