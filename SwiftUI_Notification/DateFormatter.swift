//
//  DateFormatter.swift
//  SwiftUI_Notification
//
//  Created by 西澤駿 on 2022/10/18.
//

import Foundation

var dateFormat: DateFormatter {
    let dformat = DateFormatter()
    dformat.dateStyle = .medium              // 日付部分のスタイル設定
    dformat.timeStyle = .medium              // 時間部分のスタイル設定
    dformat.dateFormat = "yyyy/MM/dd HH:mm"  // 変換形式設定
    dformat.timeZone  = TimeZone(identifier: "Asia/Tokyo")
    return dformat
}

var yearFormat: DateFormatter {
    let dformat = DateFormatter()
    dformat.dateStyle = .medium
    dformat.timeStyle = .medium
    dformat.dateFormat = "yyyy"
    dformat.timeZone  = TimeZone(identifier: "Asia/Tokyo")
    return dformat
}

var monthFormat: DateFormatter {
    let dformat = DateFormatter()
    dformat.dateStyle = .medium
    dformat.timeStyle = .medium
    dformat.dateFormat = "MM"
    dformat.timeZone  = TimeZone(identifier: "Asia/Tokyo")
    return dformat
}

var dayFormat: DateFormatter {
    let dformat = DateFormatter()
    dformat.dateStyle = .medium
    dformat.timeStyle = .medium
    dformat.dateFormat = "dd"
    dformat.timeZone  = TimeZone(identifier: "Asia/Tokyo")
    return dformat
}
