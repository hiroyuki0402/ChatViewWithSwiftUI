//
//  MessageData.swift
//  ChatViewWithSwiftUI
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/09.
//

import Foundation

struct MessageData: Decodable, Identifiable {
    var id: String
    let text: String
    let user: UserData
    let date: String
    let readed: Bool

    var toDate: Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        dateFormatter.locale = Locale(identifier: "ja_JP")
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        return dateFormatter.date(from: date) ?? Date()
    }
}
