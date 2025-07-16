//
//  +UILabel.swift
//  SeSAC7Week3_T1
//
//  Created by ez on 7/16/25.
//

import UIKit

extension UILabel {
    func asColor(targetString: String, color: UIColor) {
        let fullText = text ?? ""
        let attributedString = NSMutableAttributedString(string: fullText)
        let range = (fullText as NSString).range(of: targetString, options: .caseInsensitive)
        attributedString.addAttribute(.foregroundColor, value: color, range: range)
        attributedText = attributedString
    }
}
