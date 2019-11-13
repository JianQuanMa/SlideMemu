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
    override func viewDidLoad() {
        super.viewDidLoad()
  //      viewLeadingContraint.constant = -200
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
