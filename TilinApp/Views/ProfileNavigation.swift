//
//  ProfileNavigation.swift
//  TilinApp
//
//  Created by gdaalumno on 07/12/23.
//

import SwiftUI

struct ProfileNavigation: View {
    let profile: Person
    var body: some View {
        //NavigationView si no jala el de NavigationStack (el view ya es obsoleto)
        NavigationStack{
            ProfileDescription(profile: profile)
                .navigationTitle("My Profile")
        }
    }
}

struct ProfileNavigation_Previews: PreviewProvider {
    static var previews: some View {
        ProfileNavigation(profile: Person.myProfile)
    }
}
