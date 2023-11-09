//
//  File.swift
//  ChatViewWithSwiftUI
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/09.
//

import Foundation

class ChatViewModel: ObservableObject {

    @Published var chatDatas: [ChatData] = []
    @Published var messages: [MessageData] = []

    init() {
        loadData()
    }

    func loadData() {
        guard let url = Bundle.main.url(forResource: "chatData", withExtension: "json"),
              let data = try? Data(contentsOf: url) else {
            return
        }

        let decoder = JSONDecoder()

        do {
            chatDatas = try decoder.decode([ChatData].self, from: data)
        } catch {
            print("Failed to decode JSON: \(error)")
        }
    }


    func getChatData(at index: Int) -> ChatData {
        return chatDatas[index]
    }
}
