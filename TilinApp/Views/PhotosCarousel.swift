//
//  PhotosCarousel.swift
//  TilinApp
//
//  Created by gdaalumno on 08/12/23.
//

import SwiftUI

struct PhotosCarousel: View {
    let photosNames: [String]
    var body: some View {
        TabView {
            ForEach(photosNames, id: \.self) {photo in
                VStack {
                    Text(photo)
                    Image(photo)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .padding()
                }
                
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

struct PhotosCarousel_Previews: PreviewProvider {
    static var previews: some View {
        PhotosCarousel(photosNames: Person.myProfile.photos)
    }
}
