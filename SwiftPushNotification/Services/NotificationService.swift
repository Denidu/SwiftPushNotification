//
//  NotificationService.swift
//  SwiftPushNotification
//
//  Created by Denidu Gamage on 2025-05-13.
//

import Foundation
import UserNotifications

class NotificationService {
    static let shared = NotificationService()

    private init() {}

    func requestAuthorization() {
        UNUserNotificationCenter.current()
            .requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
                if let error = error {
                    print("Notification authorization error: \(error)")
                } else {
                    print("Notification permission granted: \(granted)")
                }
            }
    }
}

