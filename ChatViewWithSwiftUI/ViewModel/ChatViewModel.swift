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
    @Published var userDatas: [UserData] = []

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


        _ = chatDatas.compactMap { item in
            messages = item.messages
        }
    }


    func getChatData(at index: Int) -> ChatData {
        return chatDatas[index]
    }

    func getUserData(at index: Int) -> UserData {
        return userDatas[index]
    }

    func getMessageData(at index: Int) -> MessageData {
        return messages[index]
    }

    func saveChatdata(data: ChatData) {
        self.chatDatas.append(data)
    }

    func saveMessageData(data: MessageData) {
        self.messages.append(data)
    }
}
