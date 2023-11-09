//
//  ChatData.swift
//  ChatViewWithSwiftUI
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/09.
//

import Foundation

struct ChatData: Decodable, Identifiable {
    let id: String
    let messages: [MessageData]
}
