//
//  HeaderView.swift
//  ChatViewWithSwiftUI
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/06.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {

            Button {

            } label: {
                Image(systemName: "chevron.backward")
                    .font(.title2)
                    .italic()
                    .foregroundColor(.black)
            }


            Text("黒石")
                .font(.title2)
                .fontWeight(.bold)
                .italic()
                .foregroundColor(.black)

            Spacer()

            Button {

            } label: {
                Image(systemName: "text.magnifyingglass.rtl")
                    .font(.title2)
                    .frame(width: 40, height: 40)
                    .foregroundColor(.black)
            }


            Button {

            } label: {
                Image(systemName: "phone")
                    .font(.title2)
                    .frame(width: 40, height: 40)
                    .foregroundColor(.black)
            }


            Button {

            } label: {
                Image(systemName: "line.3.horizontal")
                    .font(.title2)
                    .frame(width: 40, height: 40)
                    .foregroundColor(.black)
            }


        }
            .foregroundColor(.white)
            .padding()
            .background(.cyan.opacity(0.9))
    }
}

#Preview {
    HeaderView()
}
