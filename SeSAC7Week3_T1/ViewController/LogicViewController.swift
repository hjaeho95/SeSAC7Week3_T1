//
//  LogicViewController.swift
//  SeSAC7Week3_T1
//
//  Created by ez on 7/11/25.
//

import UIKit

class LogicViewController: UIViewController {

    @IBOutlet var logicTextField: UITextField!
    
    @IBOutlet var logicTextView: UITextView!
    
    @IBOutlet var logicLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUI()
    }
    
    func setUI() {
        setLogicTextField()
        setLogicTextView()
        setLogicLabel()
    }
    
    func setLogicTextField() {
        let attrString = NSAttributedString(string: "최대 숫자를 입력해주세요.", attributes: [
            .font: UIFont.systemFont(ofSize: 18, weight: .bold),
        ])
        logicTextField.attributedPlaceholder = attrString
        logicTextField.textAlignment = .center
    }
    
    func setLogicTextView() {
        logicTextView.text = ""
        logicTextView.textColor = .lightGray
        logicTextView.textAlignment = .center
        
        logicTextView.isEditable = false
    }
    
    func logic369(_ value: Int) {
        var str = ""
        var count = 0
        for i in 1...value {
            let strArr = Array(String(i))
            
            if strArr.filter { ["3", "6", "9"].contains($0) }.count > 0 {
                count += 1
                str += "👏"
            } else {
                str += String(i)
            }
            str += ", "
        }
        
        logicTextView.text = str
        logicLabel.text = "숫자 \(value)까지 총 박수는 \(count)번 입니다."
    }
    
    func setLogicLabel() {
        logicLabel.text = ""
        logicLabel.font = .systemFont(ofSize: 36, weight: .black)
        logicLabel.textAlignment = .center
        logicLabel.numberOfLines = 0
    }
    
    @IBAction func logicTextFieldDidEndOnExit(_ sender: UITextField) {
        print(#function)
        
        let value = Int(logicTextField.text ?? "") ?? 0
        
        logic369(value)
    }
}
