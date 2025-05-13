//
//  LocalNotificationManager.swift
//  SwiftPushNotification
//
//  Created by Denidu Gamage on 2025-05-13.
//

import Foundation
import UserNotifications

class LocalNotificationManager {
    static func schedule(_ data: NotificationData, after seconds: TimeInterval = 5) {
        let content = UNMutableNotificationContent()
        content.title = data.title
        content.body = data.body
        content.sound = .default

        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: seconds, repeats: false)
        let request = UNNotificationRequest(identifier: data.id, content: content, trigger: trigger)

        UNUserNotificationCenter.current().add(request) { error in
            if let error = error {
                print("Failed to schedule notification: \(error)")
            }
        }
    }
}

