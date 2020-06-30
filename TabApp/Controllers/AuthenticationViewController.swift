//
//  AuthenticationViewController.swift
//  TabApp
//
//  Created by Abdul Basit on 30/06/2020.
//  Copyright © 2020 Abdul Basit. All rights reserved.
//

import UIKit

final class AuthenticationViewController: UIViewController, GlobalUpdating {
    
    @Global var userSettings: UserSettings
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerForUpdates()
    }

    @IBAction private func toggleAction(_ sender: Any) {
        userSettings.isAuthenticated.toggle()
    }
    
    func update() {
        print("Updating AuthenticationViewController")
        self.navigationItem.title = userSettings.authenticationSting
    }

}
