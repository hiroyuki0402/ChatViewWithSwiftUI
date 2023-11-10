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
    @State var index: String = ""

    init() {
        if let id = chatViewModel.messages.last?.id, let index = Int(id) {
            self.index = String(index + 1)
        }
    }

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
        let userData = UserData(id: "1", name: "カーキ", image: "user01")
        let message = MessageData(
            id: index,
            text: text,
            user: userData,
            date: Date().formattedDate(.yyyyMMdd),
            readed: false)
    }
}

#Preview {
    ChatView()
}
