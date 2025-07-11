//
//  MagazineInfoTableViewCell.swift
//  SeSAC7Week3_T1
//
//  Created by ez on 7/11/25.
//

import UIKit

class MagazineInfoTableViewCell: UITableViewCell {

    @IBOutlet var magazineImageView: UIImageView!
    
    @IBOutlet var magazineTitleLabel: UILabel!
    @IBOutlet var magazineSubtitleLabel: UILabel!
    
    @IBOutlet var magazineDateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setUI()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
    }
    
    func setUI() {
        setMagazineImageView()
        setMagazineTitleLabel()
        setMagazineSubtitleLabel()
        setMagazineDateLabel()
    }
    
    func setMagazineImageView() {
        magazineImageView.contentMode = .scaleAspectFill
        
        magazineImageView.clipsToBounds = true
        magazineImageView.layer.cornerRadius = 10
    }
    
    func setMagazineTitleLabel() {
        magazineTitleLabel.font = .systemFont(ofSize: 20, weight: .bold)
        magazineTitleLabel.numberOfLines = 0
    }
    
    func setMagazineSubtitleLabel() {
        magazineSubtitleLabel.font = .systemFont(ofSize: 14, weight: .semibold)
        magazineSubtitleLabel.textColor = .lightGray
    }
    
    func setMagazineDateLabel() {
        magazineDateLabel.font = .systemFont(ofSize: 12, weight: .semibold)
        magazineDateLabel.textColor = .lightGray
        magazineDateLabel.textAlignment = .right
    }
}
