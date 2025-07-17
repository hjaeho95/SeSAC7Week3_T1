//
//  CountryExploreTableViewCell.swift
//  SeSAC7Week3_T1
//
//  Created by ez on 7/15/25.
//

import UIKit

class CountryExploreTableViewCell: UITableViewCell {

    static let identifier = "CountryExploreTableViewCell"
    
    @IBOutlet var countryImageView: UIImageView!
    
    @IBOutlet var mainLabel: UILabel!
    
    @IBOutlet var subtitleLabel: UILabel!
    
    @IBOutlet var innerUIView: UIView!
    
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
        mainLabel.text = "\(rowData.city_name) | \(rowData.city_english_name)"
        if let highlighting { mainLabel.asColor(targetString: highlighting, color: .orange) }
    }
    
    func configureSubtitleLabel(rowData: City, _ highlighting: String? = nil) {
        subtitleLabel.text = rowData.city_explain
        if let highlighting { subtitleLabel.asColor(targetString: highlighting, color: .orange) }
    }
    
    func initUI() {
        initCountryImageView()
        initMainLabel()
        initSubtitleLabel()
        initInnerUIView()
    }
    
    
    func initCountryImageView() {
        countryImageView.contentMode = .scaleAspectFill
        
        countryImageView.clipsToBounds = true
        countryImageView.layer.cornerRadius = 20
        countryImageView.layer.maskedCorners = CACornerMask(arrayLiteral: .layerMinXMinYCorner, .layerMaxXMaxYCorner)
    }
    
    func initMainLabel() {
        mainLabel.font = .systemFont(ofSize: 16, weight: .bold)
        mainLabel.textColor = .white
        
        mainLabel.numberOfLines = 1
    }
    
    func initSubtitleLabel() {
        subtitleLabel.font = .systemFont(ofSize: 10)
        subtitleLabel.textColor = .white
        
        subtitleLabel.numberOfLines = 1
    }
    
    func initInnerUIView() {
        innerUIView.backgroundColor = UIColor(hexCode: "000000", alpha: 0.5)
        
        innerUIView.clipsToBounds = true
        innerUIView.layer.cornerRadius = 20
        innerUIView.layer.maskedCorners = CACornerMask(arrayLiteral: .layerMaxXMaxYCorner)
    }
}
