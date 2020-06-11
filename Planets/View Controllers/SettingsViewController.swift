//
//  SettingsViewController.swift
//  Planets
//
//  Created by John McCants on 6/10/20.
//  Copyright © 2020 Lambda Inc. All rights reserved.
//

import UIKit
import Foundation

class SettingsViewController: UIViewController {

    @IBOutlet weak var shouldShowPlutoSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    @IBAction func plutoSwitchToggled(_ sender: UISwitch) {
        let userDefaults = UserDefaults.standard
        
        userDefaults.set(sender.isOn, forKey: String.showPluto)
        
    }
    
    @IBAction func doneTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
    }
    
    func updateViews() {
        let showPluto = UserDefaults.standard.bool(forKey: .showPluto)
        
        shouldShowPlutoSwitch.isOn = showPluto
    }
    
}
