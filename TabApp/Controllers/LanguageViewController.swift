//
//  LanguageViewController.swift
//  TabApp
//
//  Created by Abdul Basit on 30/06/2020.
//  Copyright © 2020 Abdul Basit. All rights reserved.
//

import UIKit

final class LanguageViewController: UIViewController, GlobalUpdating {
    
    @Global var appSettings: AppSettings
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerForUpdates()
    }
    
    @IBAction private func SwitchAction(_ sender: UISegmentedControl) {
        appSettings.language = sender.titleForSegment(at: sender.selectedSegmentIndex) ?? "🇬🇧 English"
    }
    
    func update() {
        print("Updating LanguageViewController")
       self.navigationItem.title = appSettings.language
    }
    
}
