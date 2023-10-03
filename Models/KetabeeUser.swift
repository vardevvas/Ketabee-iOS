//
//  KetabeeUser.swift
//  Ketabee-iOS
//
//  Created by Ali AwadAlkarim on 03/10/2023.
//

import Foundation

struct KetabeeUser: Identifiable {
    var id: Int
    var username: String
    var email: String
    var phoneNumber: String?
    var location: String?
    var profilePictureURL: URL?
    var latitude: Double?
    var longitude: Double?
    var role: KetabeeRole
}

enum KetabeeRole: String {
    case user
    case admin
    // Add more roles as needed
}
