//
//  UserData.swift
//  ChatViewWithSwiftUI
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/09.
//

import Foundation

struct UserData: Decodable, Identifiable {
    let id: String
    let name: String
    let image: String
}
