//
//  TravelInfoTableViewCell.swift
//  SeSAC7Week3_T1
//
//  Created by ez on 7/11/25.
//

import UIKit

class TravelInfoTableViewCell: UITableViewCell {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var saveLabel: UILabel!
    @IBOutlet var adLabel: UILabel!
    
    @IBOutlet var travelImageView: UIImageView!
    @IBOutlet var adImageView: UIImageView!
    
    @IBOutlet var gradeImageViews: [UIImageView]!
    
    @IBOutlet var likeButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setUI()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        setUI()
    }
    
    func setUI() {
        setTitleLabel()
        setDescriptionLabel()
        setGradeImageViews()
        setSaveLabel()
        setTravelImageView()
        setLikeButton()
        setAdImageView()
        setAdLabel()
    }

    func setTitleLabel() {
        titleLabel.text = ""
        titleLabel.font = .systemFont(ofSize: 16, weight: .bold)
    }
    
    func setDescriptionLabel() {
        descriptionLabel.text = ""
        descriptionLabel.font = .systemFont(ofSize: 14, weight: .semibold)
        descriptionLabel.textColor = .gray
        descriptionLabel.numberOfLines = 3
    }
    
    func setGradeImageViews() {
       gradeImageViews.forEach { imageView in
            imageView.image = UIImage(systemName: "star.fill")
            imageView.tintColor = .lightGray
        }
    }
    
    func setSaveLabel() {
        saveLabel.text = "0"
        saveLabel.font = .systemFont(ofSize: 12, weight: .semibold)
        saveLabel.textColor = .lightGray
    }
    
    func setTravelImageView() {
        travelImageView.image = .none
        travelImageView.contentMode = .scaleAspectFill
        
        travelImageView.clipsToBounds = true
        travelImageView.layer.cornerRadius = 10
    }
    
    func setLikeButton() {
        likeButton.isHidden = true
        
        let symbolConfig = UIImage.SymbolConfiguration(pointSize: 22, weight: .semibold)
        likeButton.setPreferredSymbolConfiguration(symbolConfig, forImageIn: .normal)
    }
    
    func setAdImageView() {
        adImageView.backgroundColor = .orange
        
        adImageView.clipsToBounds = true
        adImageView.layer.cornerRadius = 10
    }
    
    func setAdLabel() {
        adLabel.text = "AD"
        adLabel.font = .systemFont(ofSize: 12, weight: .semibold)
        adLabel.textAlignment = .center
        
        adLabel.backgroundColor = .white
        
        adLabel.clipsToBounds = true
        adLabel.layer.cornerRadius = 10
    }
}
