//
//  ViewController.swift
//  KERBluetoothSampleApplication
//
//  Created by Lindsey Rafferty on 2/25/17.
//  Copyright © 2017 Quiver Coding. All rights reserved.
//

import UIKit
import KERBluetoothManager

class ViewController: UIViewController, KERBluetoothManagerDelegate {
    
    // MARK: - IBOutlet Properties -
    
    @IBOutlet weak var scanButton: UIButton!
    
    // MARK: - View Life Cycle -

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - IBAction Methods -
    
    @IBAction func onScanButtonPressed(_ sender: Any) {
        KERBluetoothManager.instance().scanForPeripherals()
        
    }
    
    // MARK: - KERBluetoothManager Delegate Methods -
    
    func didUpdateState(sender: KERBluetoothManager) {
        print("State Update - \(sender)")
    }
}
