//
//  ViewController.swift
//  KERBluetoothSampleApplication
//
//  Created by Lindsey Rafferty on 2/25/17.
//  Copyright © 2017 Quiver Coding. All rights reserved.
//

import UIKit
import KERBluetoothManager

class ViewController: UIViewController {
    
    // MARK: View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        KERBluetoothManager().scanForPeripherals()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
