//
//  SocialMedia.swift
//  TilinApp
//
//  Created by gdaalumno on 06/12/23.
//

import Foundation

struct SocialMedia: Identifiable {
    let id = UUID().uuidString
    var media: String
    var url: String
    var iconName: String
}

extension SocialMedia {
    static let mySocialMedia = [
        SocialMedia(media: "GitHub", url: "https://github.com/DiegoIvanR", iconName: "githubIcon"),
        SocialMedia(media: "Youtube", url: "https://www.youtube.com", iconName: "youtubeIcon")
    ]
}
