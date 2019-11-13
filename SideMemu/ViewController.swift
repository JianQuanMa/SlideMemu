//
//  ViewController.swift
//  SideMemu
//
//  Created by Jian Ma on 11/11/19.
//  Copyright © 2019 Jian Ma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewLeadingContraint: NSLayoutConstraint!
    @IBOutlet weak var sideMemuView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        sideMemuView.layer.opacity = 10
        sideMemuView.layer.shadowRadius = 6
        
    }

    @IBAction func didTappedMemuButton(_ sender: UIBarButtonItem) {
        viewLeadingContraint.toggleLeadingContraint()
    }
    
    
}

extension NSLayoutConstraint{
    func toggleLeadingContraint(){
        self.constant = self.constant != 0 ? 0 : CGFloat(integerLiteral: Int(self.identifier!)!)
    }
    
}
