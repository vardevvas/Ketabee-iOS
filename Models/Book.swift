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
    var genre: String?
    var coverImageURL: URL?
    var ownerId: Int
    var bookLatitude: Double?
    var bookLongitude: Double?
    var favoritedByUsers: [KetabeeUser]?
}
