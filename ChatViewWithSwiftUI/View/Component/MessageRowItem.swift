//
//  MessageView.swift
//  ChatViewWithSwiftUI
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/06.
//

import SwiftUI

struct MessageRowItem: View {
    var body: some View {
        /// メッセージ
        HStack(alignment: .top) {

            /// ユーザアイコン
            userIcon

            /// メッセージ
            messageArea

            /// 時間
            timeArea
            Spacer()

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
        Text("こんにちは")
            .padding()
            .background(.white)
            .cornerRadius(30)
    }
    /// 時間既読エリア
    private var timeArea: some View {
        VStack(alignment: .trailing) {
            Spacer()
            Text("既読")
            Text(Date().formattedDate(.HHmm))
        }
        .font(.footnote)
    }
}

#Preview {
    MessageRowItem()
        .background(.gray)
}
