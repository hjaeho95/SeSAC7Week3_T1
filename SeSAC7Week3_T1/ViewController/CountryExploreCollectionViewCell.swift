//
//  CountryExploreCollectionViewCell.swift
//  SeSAC7Week3_T1
//
//  Created by ez on 7/17/25.
//

import UIKit

class CountryExploreCollectionViewCell: UICollectionViewCell {

    static let identifier = "CountryExploreCollectionViewCell"
    
    @IBOutlet var countryImageView: UIImageView!
    
    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet var subtitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        initUI()
    }
    
    func configureUI(rowData: City) {
        configureCountryImageView(rowData: rowData)
        configureMainLabel(rowData: rowData)
        configureSubtitleLabel(rowData: rowData)
    }
    
    func configureCountryImageView(rowData: City) {
        let url = URL(string: rowData.city_image)
        countryImageView.kf.setImage(with: url)
    }
    
    func configureMainLabel(rowData: City, _ highlighting: String? = nil) {
        titleLabel.text = "\(rowData.city_name) | \(rowData.city_english_name)"
        if let highlighting { titleLabel.asColor(targetString: highlighting, color: .orange) }
    }
    
    func configureSubtitleLabel(rowData: City, _ highlighting: String? = nil) {
        subtitleLabel.text = rowData.city_explain
        if let highlighting { subtitleLabel.asColor(targetString: highlighting, color: .orange) }
    }
    
    func initUI() {
        initCountryImageView()
        initMainLabel()
        initSubtitleLabel()
    }
    
    func initCountryImageView() {
        countryImageView.contentMode = .scaleAspectFill
        
        countryImageView.clipsToBounds = true
        countryImageView.layer.cornerRadius = countryImageView.frame.height / 2 - 32
    }
    
    func initMainLabel() {
        titleLabel.font = .systemFont(ofSize: 14, weight: .heavy)
        titleLabel.textColor = .black
        titleLabel.textAlignment = .center
        
        titleLabel.numberOfLines = 1
    }
    
    func initSubtitleLabel() {
        subtitleLabel.font = .systemFont(ofSize: 12)
        subtitleLabel.textColor = .gray
        subtitleLabel.textAlignment = .center
        
        subtitleLabel.numberOfLines = 2
    }
}
