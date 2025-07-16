//
//  TravelInfoAdTableViewCell.swift
//  SeSAC7Week3_T1
//
//  Created by ez on 7/15/25.
//

import UIKit

class TravelInfoAdTableViewCell: UITableViewCell {
    
    static let identifier = "TravelInfoAdTableViewCell"
    
    
    @IBOutlet var adView: UIView!
    
    @IBOutlet var adLabel: UILabel!
    
    @IBOutlet var mainLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        initUI()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        initUI()
    }
    
    func configureUI(rowData: Travel) {
        configureMainLabel(rowData)
        
    }
    
    func initUI() {
        initAdView()
        initMainLabel()
        initAdLabel()
    }
    
    func configureMainLabel(_ rowData: Travel) {
        mainLabel.text = rowData.title
    }
    
    func initAdView() {
        adView.backgroundColor = .orange
        
        adView.clipsToBounds = true
        adView.layer.cornerRadius = 10
    }
    
    func initMainLabel() {
        mainLabel.font = .systemFont(ofSize: 20, weight: .black)
        mainLabel.textAlignment = .center
        
        mainLabel.numberOfLines = 2
    }
    
    func initAdLabel() {
        adLabel.text = "AD"
        adLabel.font = .systemFont(ofSize: 12, weight: .semibold)
        adLabel.textAlignment = .center
        
        adLabel.numberOfLines = 1
        
        adLabel.backgroundColor = .white
        
        adLabel.clipsToBounds = true
        adLabel.layer.cornerRadius = adLabel.frame.height / 2
    }
}
