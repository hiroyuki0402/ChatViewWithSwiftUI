//
//  ChatView.swift
//  ChatViewWithSwiftUI
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/06.
//

import SwiftUI

struct ChatView: View {
    // MARK: - プロパティー

    // MARK: - ボディー

    var body: some View {
        VStack(spacing: 0) {

            /// メッセージ
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 0) {
                    ForEach(0 ..< 25) { item in
                        MessageRowItem()
                    }
                }
                .padding(.horizontal)
                .padding(.top, 72)
            }
            .background(.cyan)

            /// ヘッダー
            .overlay(HeaderView(), alignment: .top)

            /// フッター(入力欄)
            FooterView()

        }//: VStack
    }//; ボディー
}

#Preview {
    ChatView()
}
