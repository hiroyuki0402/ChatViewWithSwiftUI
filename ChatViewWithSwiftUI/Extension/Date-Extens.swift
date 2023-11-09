//
//  Date-Extens.swift
//  ChatViewWithSwiftUI
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/07.
//

import Foundation

extension Date {
    enum Formatter {
        case yyyyMMdd
        case ddMMyyyy
        case MMddyyyy
        case HHmmss
        case hhmmssa
        case HHmm

        /// フォーマットの形式
        /// - Returns: フォーマットの形式の文字列
        func getString() -> String {
            switch self {
            case .yyyyMMdd:
                return "yyyy-MM-dd"
            case .ddMMyyyy:
                return "dd/MM/yyyy"
            case .MMddyyyy:
                return "MM/dd/yyyy"
            case .HHmmss:
                return "HH:mm:ss"
            case .hhmmssa:
                return "hh:mm:ss a"
            case .HHmm:
                return "HH:mm"
            }
        }
    }

    /// フォーマット
    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ja_JP")
        return formatter
    }()


    /// 日付で表示するフォーマットの生成
    /// - Parameter format: フォーマットの形式
    /// - Returns: 日付から指定されたフォーマットで作成した文字列
    func formattedDate(_ format: Formatter) -> String {
        Date.dateFormatter.dateFormat = format.getString()
        return Date.dateFormatter.string(from: self)
    }
}




