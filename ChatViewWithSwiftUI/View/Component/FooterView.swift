//
//  FooterView.swift
//  ChatViewWithSwiftUI
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/06.
//

import SwiftUI

struct FooterView: View {
    @State var text: String = ""

    @State var doneMesage: ((String) -> Void) = { _ in }

    var body: some View {
        /// タブバー(入力欄)
        HStack {
            Image(systemName: "plus")
                .font(.title2)

            Image(systemName: "camera")
                .font(.title2)

            Image(systemName: "photo")
                .font(.title2)

            TextField("Aa", text: $text)
                .padding()
                .background(
                    Color(uiColor: .secondarySystemBackground)
                )
                .clipShape(Capsule())
                .overlay(
                    Image(systemName: "smiley")
                        .foregroundColor(Color(uiColor: .lightGray))
                        .padding(.horizontal, 15)
                    , alignment: .trailing
                )
                .onSubmit {
                    doneMesage(text)
                    text = ""
                }

            Image(systemName: "mic")
                .font(.title2)
                .fontWeight(.semibold)


        }
        .padding()
        .background(.white)
    }
}

#Preview {
    FooterView()
}
