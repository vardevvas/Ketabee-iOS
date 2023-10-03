//
//  BookReview.swift
//  Ketabee-iOS
//
//  Created by Ali AwadAlkarim on 03/10/2023.
//

import Foundation

struct BookReview: Identifiable {
    var id: Int
    var bookId: Int
    var reviewerId: Int
    var rating: Int
    var comment: String?
    var timestamp: Date
}
