//
//  Constants.swift
//  myTunes
//
//  Created by MacOS on 24.03.2022.
//

import Foundation

enum Media: String {
    case movie = "movie"
    case podcast = "podcast"
    case music = "music"
    case musicVideo = "musicVideo"
    case audiobook = "audiobook"
    case shortFilm = "shortFilm"
    case tvShow = "tvShow"
    case software = "software"
    case ebook = "ebook"
    case all = "all"
}

enum WrapperType: String {
    case track = "track"
    case artist = "artist"
    case collection = "collection"
}
