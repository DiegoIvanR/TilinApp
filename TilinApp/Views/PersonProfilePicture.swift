//
//  PersonProfilePicture.swift
//  TilinApp
//
//  Created by gdaalumno on 06/12/23.
//

import SwiftUI

struct PersonProfilePicture: View {
    let profilePictureUrl: String
    let name: String
    var pictureUrl: URL?{
        URL(string: profilePictureUrl)
    }
    var body: some View {
        ZStack (alignment: .bottom){
            AsyncImage(url: pictureUrl){ image in
                image.image? //el signo de interrogacion es para cuando la creacion de la url falla
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300)
                    .clipShape(Circle())
                    .overlay(Material.bar, in: //filtro alrededor de la imagen
                             Circle()
                        .stroke(lineWidth: 5)
                    )
            }
            /*Image("profile") //nombre de la image agregada en assets
                .resizable()
                .aspectRation(contentMode: .fit)
                .frame(width: 200)
                .clipShape(Circle())*/
            Text(name)
                .font(.title)
                .padding(6)
                .background(Material.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 10))
        }
    }
}

struct PersonProfilePicture_Previews: PreviewProvider {
    static var previews: some View {
        PersonProfilePicture(profilePictureUrl: Person.myProfile.profilePic,
                             name: Person.myProfile.nombre)
    }
}
