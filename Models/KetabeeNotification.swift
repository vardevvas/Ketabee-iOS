//
//  KetabeeNotification.swift
//  Ketabee-iOS
//
//  Created by Ali AwadAlkarim on 03/10/2023.
//

import Foundation

struct KetabeeNotification: Identifiable {
    var id: Int
    var userId: Int
    var content: String
    var timestamp: Date
    var isRead: Bool
}
