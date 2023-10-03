//
//  KetabeeMessage.swift
//  Ketabee-iOS
//
//  Created by Ali AwadAlkarim on 03/10/2023.
//

import Foundation

struct KetabeeMessage: Identifiable {
    var id: Int
    var senderId: Int
    var receiverId: Int
    var content: String
    var timestamp: Date
    var isRead: Bool
}
