//
//  NotificationViewModel.swift
//  SwiftPushNotification
//
//  Created by Denidu Gamage on 2025-05-13.
//

import Foundation

class NotificationViewModel: ObservableObject {
    func sendTestNotification() {
        let notification = NotificationData(
            id: UUID().uuidString,
            title: "Test Notification",
            body: "This is a local push notification from SwiftUI 🎉"
        )
        LocalNotificationManager.schedule(notification)
    }
}

