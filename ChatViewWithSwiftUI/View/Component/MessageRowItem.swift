//
//  MessageView.swift
//  ChatViewWithSwiftUI
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/06.
//

import SwiftUI

struct MessageRowItem: View {

    var messages: MessageData

    var body: some View {
        /// メッセージ
        HStack(alignment: .top) {

            if messages.user.isCurentUser {
                /// ユーザアイコン
                userIcon

                /// メッセージ
                messageArea

                Spacer()
            } else {
                Spacer()

                /// 時間
                timeArea

                /// メッセージ
                messageArea

            }
        }
        .padding(.bottom)
    }
}

// MARK: - 表示アイテム

extension MessageRowItem {

    /// ユーザアイコンエリア
    private var userIcon: some View {
        Image(systemName: "person.circle")
            .resizable()
            .scaledToFit()
            .frame(width: 50, height: 50)
            .clipShape(Circle())
    }

    /// メッセージエリア
    private var messageArea: some View {
        Text(messages.text)
            .padding()
            .background(messages.user.isCurentUser ? .white: .green)
            .cornerRadius(30)
    }
    /// 時間既読エリア
    private var timeArea: some View {
        VStack(alignment: .trailing) {
            Spacer()
            Text("既読")
            Text(messages.toDate.formattedDate(.HHmm))
        }
        .font(.footnote)
    }
}

#Preview {
    MessageRowItem(messages: ChatViewModel().getMessageData(at: 0))
        .background(.gray)
}
