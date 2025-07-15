//
//  TouristSpotViewController.swift
//  SeSAC7Week3_T1
//
//  Created by ez on 7/15/25.
//

import UIKit

class TouristSpotViewController: UIViewController {

    
    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet var subtitleLabel: UILabel!
    
    @IBOutlet var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "관광지 화면"
    }
    
    func setUI() {
        setImageView()
        setTitleLabel()
        setSubtitleLabel()
        setButton()
    }

    func setImageView() {
        imageView.backgroundColor = .orange
        
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 10
    }
    
    func setTitleLabel() {
        titleLabel.text = "테스트"
        titleLabel.font = .systemFont(ofSize: 40, weight: .black)
        titleLabel.textAlignment = .center
        titleLabel.numberOfLines = 1
    }
    
    func setSubtitleLabel() {
        subtitleLabel.text = "테스트"
        subtitleLabel.font = .systemFont(ofSize: 28, weight: .bold)
        subtitleLabel.textAlignment = .center
        subtitleLabel.numberOfLines = 3
    }
    
    func setButton() {
        let attrString = NSMutableAttributedString(string: "다른 관광지 보러가기", attributes: [
            .font: UIFont.systemFont(ofSize: 16, weight: .bold),
            .foregroundColor: UIColor.white
        ])
        
        button.backgroundColor = UIColor(hexCode: "B9D9F0", alpha: 1)
        
        button.clipsToBounds = true
        button.layer.cornerRadius = button.frame.height / 2
    }
}
