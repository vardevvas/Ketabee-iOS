//
//  Book.swift
//  Ketabee-iOS
//
//  Created by Ali AwadAlkarim on 03/10/2023.
//

import Foundation

struct Book: Identifiable {
    var id: ObjectIdentifier
        
    var title: String
    var author: String
    var description: String?
    var genre: Genre?
    var coverImageURL: URL?
    var ownerId: Int
    var bookLatitude: Double?
    var bookLongitude: Double?
    var favoritedByUsers: [KetabeeUser]?
}

enum Genre: String {
    case fiction
    case mystery
    case romance
    case scienceFiction
    case fantasy
    case nonFiction
    case biography
    case selfHelp
    
    var displayName: String {
        switch self {
            case .fiction:
                return "Fiction"
            case .mystery:
                return "Mystery"
            case .romance:
                return "Romance"
            case .scienceFiction:
                return "Science Fiction"
            case .fantasy:
                return "Fantasy"
            case .nonFiction:
                return "Non-Fiction"
            case .biography:
                return "Biography"
            case .selfHelp:
                return "Self-Help"
        }
    }
}
