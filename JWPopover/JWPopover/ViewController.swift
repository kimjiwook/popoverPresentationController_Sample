//
//  ViewController.swift
//  JWPopover
//
//  Created by JW_Macbook on 2020/07/28.
//  Copyright © 2020 JW_Macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var btnPopover: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    /// popover Btn
    /// - Parameter sender: UIButton
    @IBAction func doPopover(_ sender: UIButton) {
        let vc = PopoverViewController(nibName: "PopoverViewController", bundle: nil)
        
        // Preferred Size
        vc.preferredContentSize = CGSize(width: 200, height: 200)
        vc.modalPresentationStyle = .popover
        vc.popoverPresentationController!.sourceView = btnPopover
        vc.popoverPresentationController!.sourceRect = btnPopover.bounds

        present(vc, animated: true, completion:nil)
    }
}
