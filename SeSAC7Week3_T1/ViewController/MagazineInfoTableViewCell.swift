//
//  MagazineInfoTableViewCell.swift
//  SeSAC7Week3_T1
//
//  Created by ez on 7/11/25.
//

import UIKit
import Kingfisher

class MagazineInfoTableViewCell: UITableViewCell {

    static let identifier = "MagazineInfoTableViewCell"
    
    @IBOutlet var magazineImageView: UIImageView!
    
    @IBOutlet var magazineTitleLabel: UILabel!
    @IBOutlet var magazineSubtitleLabel: UILabel!
    
    @IBOutlet var magazineDateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        initUI()
    }
    
    func configureUI(rowData: Magazine) {
        configureMagazineTitleLabel(rowData)
        configureMagazineSubtitleLabel(rowData)
        configureMagazineDateLabel(rowData)
        configureMagazineImageView(rowData)
    }
    
    func configureMagazineTitleLabel(_ rowData: Magazine) {
        magazineTitleLabel.text = rowData.title
    }
    
    func configureMagazineSubtitleLabel(_ rowData: Magazine) {
        magazineSubtitleLabel.text = rowData.subtitle
    }
    
    func configureMagazineDateLabel(_ rowData: Magazine) {
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "yyMMdd"
        inputFormatter.locale = Locale(identifier: "ko_KR")
        
        if let date = inputFormatter.date(from: rowData.date) {
            let outputFormatter = DateFormatter()
            outputFormatter.dateFormat = "yy년 MM월 dd일"
            outputFormatter.locale = Locale(identifier: "ko_KR")
            
            magazineDateLabel.text = outputFormatter.string(from: date)
        }
    }
    
    func configureMagazineImageView(_ rowData: Magazine) {
        if let url = URL(string: rowData.photo_image) {
            magazineImageView.kf.setImage(with: url, options: [
                .processor(DownsamplingImageProcessor(size: magazineImageView.bounds.size)),
                .diskCacheExpiration(.days(7))
            ])
        }
    }
    
    func initUI() {
        initMagazineImageView()
        initMagazineTitleLabel()
        initMagazineSubtitleLabel()
        initMagazineDateLabel()
    }
    
    func initMagazineImageView() {
        magazineImageView.contentMode = .scaleAspectFill
        
        magazineImageView.clipsToBounds = true
        magazineImageView.layer.cornerRadius = 10
    }
    
    func initMagazineTitleLabel() {
        magazineTitleLabel.font = .systemFont(ofSize: 20, weight: .bold)
        magazineTitleLabel.numberOfLines = 2
    }
    
    func initMagazineSubtitleLabel() {
        magazineSubtitleLabel.font = .systemFont(ofSize: 14, weight: .semibold)
        magazineSubtitleLabel.textColor = .lightGray
        magazineSubtitleLabel.numberOfLines = 2
    }
    
    func initMagazineDateLabel() {
        magazineDateLabel.font = .systemFont(ofSize: 12, weight: .semibold)
        magazineDateLabel.textColor = .lightGray
        magazineDateLabel.textAlignment = .right
        magazineDateLabel.numberOfLines = 1
    }
}
