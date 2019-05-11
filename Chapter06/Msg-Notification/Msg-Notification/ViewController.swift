//
//  ViewController.swift
//  Msg-Notification
//
//  Created by 조수형 on 11/05/2019.
//  Copyright © 2019 조수형. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBOutlet var msg: UITextField!
    @IBOutlet var datepicker: UIDatePicker!
    @IBAction func save(_ sender: Any) {
        if #available(iOS 10, *){
            UNUserNotificationCenter.current().getNotificationSettings{ settings in
                if settings.authorizationStatus == UNAuthorizationStatus.authorized{
                    DispatchQueue.main.async {
                        let nContent = UNMutableNotificationContent()
                        nContent.body = (self.msg.text)!
                        nContent.title = "미리 알림"
                        nContent.sound = UNNotificationSound.default
                        
                        let time = self.datepicker.date.timeIntervalSinceNow
                        
                        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
                        
                        let request = UNNotificationRequest(identifier: "alarm", content: nContent, trigger: trigger)
                        
                        UNUserNotificationCenter.current().add(request){ (_) in
                            DispatchQueue.main.sync {
                                let date = self.datepicker.date.addingTimeInterval(9*60*60)
                                let message = "알림이 등록되었습니다.\(date)에 발송됩니다."
                                
                                let alert = UIAlertController(title: "알림 등록", message: message, preferredStyle: .alert)
                                let ok = UIAlertAction(title: "확인", style: .default)
                                
                                alert.addAction(ok)
                                self.present(alert, animated: false)

                            }
                        }
                    }
                }else{
                    let alert = UIAlertController(title: "알림 등록", message: "알람이 허용되어 있지 않습니다.", preferredStyle: .alert)
                    let ok = UIAlertAction(title: "확인", style: .default)
                    
                    alert.addAction(ok)
                    
                    self.present(alert, animated: false)
                    return
                }
            }
        }else{
            
        }
    }
    
}

