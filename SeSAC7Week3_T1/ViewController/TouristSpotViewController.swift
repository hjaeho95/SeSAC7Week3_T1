//
//  TouristSpotViewController.swift
//  SeSAC7Week3_T1
//
//  Created by ez on 7/15/25.
//

import UIKit

class TouristSpotViewController: UIViewController {

    static let identifier = "TouristSpotViewController"
    
    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet var subtitleLabel: UILabel!
    
    @IBOutlet var button: UIButton!
    
    var imageUrl: URL?
    var titleText: String = ""
    var subtitleText: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "관광지 화면"
        
        setUI()
    }
    
    func setUI() {
        setImageView()
        setTitleLabel()
        setSubtitleLabel()
        setButton()
    }

    func setImageView() {
        imageView.kf.setImage(with: imageUrl)
//        imageView.backgroundColor = .orange
        
        imageView.contentMode = .scaleAspectFill
        
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 10
    }
    
    func setTitleLabel() {
        titleLabel.text = titleText
        titleLabel.font = .systemFont(ofSize: 32, weight: .black)
        titleLabel.textAlignment = .center
        titleLabel.numberOfLines = 1
    }
    
    func setSubtitleLabel() {
        subtitleLabel.text = subtitleText
        subtitleLabel.font = .systemFont(ofSize: 20, weight: .bold)
        subtitleLabel.textAlignment = .center
        subtitleLabel.numberOfLines = 3
    }
    
    func setButton() {
        let attrString = NSMutableAttributedString(string: "  다른 관광지 보러가기  ", attributes: [
            .font: UIFont.systemFont(ofSize: 14, weight: .bold),
            .foregroundColor: UIColor.white
        ])
        button.setAttributedTitle(attrString, for: .normal)
        
        button.backgroundColor = UIColor(hexCode: "5063BF", alpha: 1)
        
        button.clipsToBounds = true
        button.layer.cornerRadius = button.frame.height / 2
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
