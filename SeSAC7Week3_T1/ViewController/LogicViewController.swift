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
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
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
        logicTextField.keyboardType = .numbersAndPunctuation
    }
    
    func setLogicTextView() {
        logicTextView.text = ""
        logicTextView.textColor = .lightGray
        logicTextView.textAlignment = .center
        
        logicTextView.isEditable = false
    }
    
    func logic369(_ value: Int) {
        var result = ""
        
        for i in 1...value {
            let strArr = Array(String(i))
            result += strArr.map { ["3", "6", "9"].contains($0) ? "👏" : $0 }
            result += ", "
        }
        
        let clapCount = result.filter { $0 == "👏" }.count
        
        logicTextView.text = result
        logicLabel.text = "숫자 \(value)까지 총 박수는 \(clapCount)번 입니다."
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
