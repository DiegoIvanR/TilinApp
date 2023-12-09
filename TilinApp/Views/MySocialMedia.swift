//
//  MySocialMedia.swift
//  TilinApp
//
//  Created by gdaalumno on 07/12/23.
//

import SwiftUI

struct MySocialMedia: View {
    let socialMedia: [SocialMedia]
    var body: some View {
        List{
            ForEach(socialMedia) { medium in
                //el ! es para transformar el opcional en un valor
                Link(destination: (URL(string: medium.url) ?? URL(string: "www.google.com")!)) {
                    HStack {
                        Image(medium.iconName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25)
                        Text(medium.media)
                    }
                }
            }
        }
    }
}

struct MySocialMedia_Previews: PreviewProvider {
    static var previews: some View {
        MySocialMedia(socialMedia: SocialMedia.mySocialMedia)
    }
}
