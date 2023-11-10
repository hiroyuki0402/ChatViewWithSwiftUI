//
//  ChatView.swift
//  ChatViewWithSwiftUI
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/06.
//

import SwiftUI

struct ChatView: View {
    // MARK: - プロパティー

    @StateObject var chatViewModel = ChatViewModel()

    // MARK: - ボディー

    var body: some View {
        VStack(spacing: 0) {

            /// メッセージ
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 0) {
                    ForEach(chatViewModel.messages) { messageData in
                        MessageRowItem(messages: messageData)
                    }
                }
                .padding(.horizontal)
                .padding(.top, 72)
            }
            .background(.cyan)

            /// ヘッダー
            .overlay(HeaderView(), alignment: .top)

            /// フッター(入力欄)
            FooterView { message in
                addMesage(text: message)
            }

        }//: VStack
    }//; ボディー


    private func addMesage(text: String) {
        if let id = chatViewModel.messages.last?.id, let index = Int(id) {
            let index = String(index + 1)
            let userData = UserData(id: "1", name: "カーキ", image: "user01")
            let message = MessageData(
                id: index,
                text: text,
                user: userData,
                date: Date().formattedDate(.yyyyMMdd),
                readed: false)
            chatViewModel.saveMessageData(data: message)
        }
    }
}

#Preview {
    ChatView()
}
