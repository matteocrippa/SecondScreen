//
//  ViewController.swift
//  SecondScreen
//
//  Created by Matteo Crippa on 08/27/2016.
//  Copyright (c) 2016 Matteo Crippa. All rights reserved.
//

import UIKit
import SecondScreen

class ViewController: UIViewController, SecondScreenDelegate {
    
    var secondScreen = SecondScreen()

    override func viewDidLoad() {
        super.viewDidLoad()
        secondScreen.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    deinit {
        
    }
    

    func externalVideoConnected(externalWindow: UIWindow) {
        print("Ext video connect")
        
        // externalWindow.rootViewController =
    }
    
    func externalVideoDisconnected() {
        print("Ext video disconnected")
    }
}
