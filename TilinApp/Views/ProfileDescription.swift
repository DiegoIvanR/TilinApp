//
//  ProfileDescription.swift
//  TilinApp
//
//  Created by gdaalumno on 07/12/23.
//

import SwiftUI

struct ProfileDescription: View {
    let profile: Person
    let columns = Array(repeating: GridItem(.flexible()), count: 2)
    var body: some View {
        ScrollView{
            PersonProfilePicture(profilePictureUrl: profile.profilePic,
                                 name: profile.nombre)
            LeadingAlignedText(text: "Obamna")
                .font(.headline)
            //id para hacerlo identifiable
            //flexible grid item: crece o disminuye segun el contenedor, puede tener max y min
            //adaptive grid item: necesita d ahv la medida minima que le vamos a pasar, maxima opcional
            //fixed grid item: no crece ni disminuye
            
            LazyVGrid(columns: columns,
                      content: {
                                ForEach(profile.hobbies, id: \.hashValue) { hobbie in
                                    GroupBox{
                                        Text(hobbie)
                                            .frame(maxWidth: .infinity)
                                    }
                                }
                    }
            )
            .padding(.horizontal)
            
            Divider()
            
            LeadingAlignedText(text: "Projects")
                .font(.headline)
            //se puede no poner el self pq esta en el mismo objeto
            LazyVGrid(columns: self.columns) {
                //al construir projects ya lo hicimos identifiable (checar models>project)
                ForEach(profile.projects) { project in
                        NavigationLink{
                            ProjectDetailView(project: project) // el project es el iterado
                        } label: {
                            GroupBox{
                                Text(project.title)
                                    .frame(maxWidth: .infinity)
                                    .foregroundColor(.primary)
                            }
                        }
                }
            }
            .padding(.horizontal)
            
            Divider()
            LeadingAlignedText(text: "Photos")
                .font(.headline)
            PhotosCarousel(photosNames: Person.myProfile.photos)
                .frame(height:400)
        }
    }
}
//leading izquierda trading derecha
struct LeadingAlignedText: View {
    let text: String
    var body: some View {
        HStack {
            Text(text)
            Spacer()
        }
        .padding()
    }
}

struct ProfileDescription_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ProfileDescription(profile: Person.myProfile)
        }
    }
}
