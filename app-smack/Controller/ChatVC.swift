//
//  ChatVC.swift
//  app-smack
//
//  Created by Julian Mino on 25/11/2019.
//  Copyright © 2019 Julian Mino. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {

    @IBOutlet weak var menuBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer((self.revealViewController()?.panGestureRecognizer())!)
        self.view.addGestureRecognizer((self.revealViewController()?.tapGestureRecognizer())!)
        self.revealViewController()?.rearViewRevealWidth = view.frame.width - 60
    }
    
}
