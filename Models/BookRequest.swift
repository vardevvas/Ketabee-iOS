//
//  BookRequest.swift
//  Ketabee-iOS
//
//  Created by Ali AwadAlkarim on 03/10/2023.
//

import Foundation

struct BookRequest: Identifiable {
    var id: Int
    var bookId: Int
    var borrowerId: Int
    var status: RequestStatus
    var requestTimestamp: Date
}

enum RequestStatus: String {
    case pending
    case accepted
    case declined
}
