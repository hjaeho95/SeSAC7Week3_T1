//
//  AdViewController.swift
//  SeSAC7Week3_T1
//
//  Created by ez on 7/15/25.
//

import UIKit

class AdViewController: UIViewController {

    static let identifier = "AdViewController"
    
    @IBOutlet var label: UILabel!
    
    var labelText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "광고 화면"
        
        setLabel()
    }
    
    func setLabel() {
        label.text = labelText
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.numberOfLines = 5
        
        label.textAlignment = .center
    }

}
