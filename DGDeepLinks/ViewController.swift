//
//  ViewController.swift
//  DGDeepLinks
//
//  Created by Dameon Green on 7/14/17.
//  Copyright © 2017 ApptasticVoyage. All rights reserved.
//

import UIKit

enum ProfileType: String {
    case guest = "Guest"
    case host = "Host"
}

class ViewController: UIViewController {
    
    var currentProfile = ProfileType.guest
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureFor(profileType: currentProfile)
    }
    
    @IBAction func didPressSwitchProfile(_ sender: Any) {
        currentProfile = currentProfile == .guest ? .host : .guest
        configureFor(profileType: currentProfile)
    }
    
    func configureFor(profileType: ProfileType) {
        title = profileType.rawValue
        ShortcutParser.shared.registerShortcuts(for: profileType)
    }
}
