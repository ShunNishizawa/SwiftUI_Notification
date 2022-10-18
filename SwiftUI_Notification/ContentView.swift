//
//  ContentView.swift
//  SwiftUI_Notification
//
//  Created by 西澤駿 on 2022/10/17.
//

import SwiftUI

struct ContentView: View {

    let date = Date()
    var body: some View {
        VStack {

            Text("\(Int(yearFormat.string(from: date))!)")
            Text(monthFormat.string(from: date))
            Text(dayFormat.string(from: date))

            Button(action: {
                sendNotificationRequestShitei()
            }, label: {
                Text("テスト通知")
            })
        }
    }


    /// 通知機能処理(基本的使い方）
    //    private func sendNotificationRequestKihon() {
    //        let content = UNMutableNotificationContent()
    //        content.title = "テスト通知"
    //        content.body = "これはテスト通知です。"
    //
    //        // トリガー処理。timeIntervalに通知を表示させるタイミングを秒数単位で指定。
    //        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
    //        let request = UNNotificationRequest(identifier: "通知No1", content: content, trigger: trigger)
    //        UNUserNotificationCenter.current().add(request)
    //    }


    /// 時間指定の通知
    private func sendNotificationRequestShitei() {
        print("\(Int(yearFormat.string(from: date))!)/\(Int(monthFormat.string(from: date))!)/\(Int(dayFormat.string(from: date))!)")
        let content = UNMutableNotificationContent()
        content.title = "テスト通知"
        content.body = "これはテスト通知です。"

        /*
         通知のトリガー条件を日付で指定。
         Date型ではなくDateComponent型で日付情報を渡す
         */
        let dateComponent = DateComponents(year: Int(yearFormat.string(from: date))!, month:Int(monthFormat.string(from: date))!, day: Int(dayFormat.string(from: date))!,hour: 14, minute: 30)

        // トリガー処理
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponent, repeats: false)
        let request = UNNotificationRequest(identifier: "通知No1", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
