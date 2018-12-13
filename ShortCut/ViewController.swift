//
//  ViewController.swift
//  ShortCut
//
//  Created by ntt on 2018/12/09.
//  Copyright © 2018 nttresonant. All rights reserved.
//

import UIKit
import MessageUI



class ViewController: UIViewController, MFMailComposeViewControllerDelegate {

 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func sendMailOne(_ sender: Any) {
        if MFMailComposeViewController.canSendMail() {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setToRecipients(["xxx@xxx"]) // 宛先アドレス
            mail.setSubject("お問い合わせ") // 件名
            mail.setMessageBody("ここに本文が入ります。", isHTML: true) // 本文
            
            present(mail, animated: true, completion: nil)
        } else {
            print("送信できません")
        }
}
    
    @IBAction func sendMailTwo(_ sender: Any) {
        if MFMailComposeViewController.canSendMail() {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setToRecipients(["xxx@xxx.xxx"]) // 宛先アドレス
            mail.setSubject("お問い合わせ") // 件名
            mail.setMessageBody("ここに本文が入ります。", isHTML: true) // 本文
            
            present(mail, animated: true, completion: nil)
        } else {
            print("送信できません")
        }
    }
    
func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true)
    }
    

    @IBAction func callOne() {
        UIApplication.shared.open(URL(string: "telprompt://09011231955")!, completionHandler: nil)
    }
    
    @IBAction func callTwo() {
        UIApplication.shared.open(URL(string: "telprompt://00000000000")!, completionHandler: nil)
    }
}
