//
//  SummaryViewController.swift
//  TabApp
//
//  Created by Abdul Basit on 30/06/2020.
//  Copyright © 2020 Abdul Basit. All rights reserved.
//

import UIKit

final class SummaryViewController: UIViewController, GlobalUpdating {

    @Global var appSettings: AppSettings
    @Global var userSettings: UserSettings
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerForUpdates()
    }

    @IBOutlet private weak var authenticationLabel: UILabel!
    @IBOutlet private weak var languageLabel: UILabel!
    
    func update() {
        print("Updating SummaryViewController")
        authenticationLabel.text = userSettings.authenticationSting
        languageLabel.text = appSettings.language
    }

}
