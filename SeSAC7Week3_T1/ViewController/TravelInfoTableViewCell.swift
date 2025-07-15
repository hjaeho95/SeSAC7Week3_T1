//
//  TravelInfoTableViewCell.swift
//  SeSAC7Week3_T1
//
//  Created by ez on 7/11/25.
//

import UIKit

class TravelInfoTableViewCell: UITableViewCell {
    
    static let identifier = "TravelInfoTableViewCell"
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var saveLabel: UILabel!
    
    @IBOutlet var travelImageView: UIImageView!
    
    @IBOutlet var gradeImageViews: [UIImageView]!
    
    @IBOutlet var likeButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        initUI()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        initUI()
    }
    
    func configureUI(rowData: Travel) {
        configureTitleLabel(rowData)
        configureDescriptionLabel(rowData)
        configureGradeImageViews(rowData)
        configureSaveLabel(rowData)
        configureTravelImageView(rowData)
        configureLikeButton(rowData)
    }
    
    func configureTitleLabel(_ rowData: Travel) {
        titleLabel.text = rowData.title
    }
    
    func configureDescriptionLabel(_ rowData: Travel) {
        descriptionLabel.text = rowData.description
    }
    
    func configureGradeImageViews(_ rowData: Travel) {
        //        if let grade = travel.grade {
        //            let gradeText = switch grade {
        //            case 0..<1:
        //                "􀋂􀋂􀋂􀋂􀋂"
        //            case 1..<2:
        //                "􀋃􀋂􀋂􀋂􀋂"
        //            case 2..<3:
        //                "􀋃􀋃􀋂􀋂􀋂"
        //            case 3..<4:
        //                "􀋃􀋃􀋃􀋂􀋂"
        //            case 4..<5:
        //                "􀋃􀋃􀋃􀋃􀋂"
        //            default:
        //                "􀋃􀋃􀋃􀋃􀋃"
        //            }
        //            cell.gradeLabel.text = gradeText
        //        } else {
        //            cell.gradeLabel.text = "􀋂􀋂􀋂􀋂􀋂"
        //        }
                if let grade = rowData.grade {
                    for i in 1...Int(grade) {
                        gradeImageViews[i - 1].tintColor = .orange
                    }
                }
    }
    
    func configureSaveLabel(_ rowData: Travel) {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        let saveText = numberFormatter.string(for: rowData.save ?? 0)
        
        saveLabel.text = " · 저장 \(saveText ?? "0")"
    }
    
    func configureTravelImageView(_ rowData: Travel) {
        guard let imageString = rowData.travel_image else { return }
        let url = URL(string: imageString)
        
        travelImageView.kf.setImage(with: url)
    }
    
    func configureLikeButton(_ rowData: Travel) {
//        likeButton.tag = indexPath.row
//        likeButton.addTarget(self, action: #selector(likeButtonTapped), for: .touchUpInside)
//        
//        guard let like = rowData.like else { return }
//        
//        likeButton.isHidden = false
//        
//        if like {
//            likeButton.setImage(UIImage(systemName: "heart.fill"), for: .normal
//            )
//            likeButton.tintColor = .red
//        } else {
//            likeButton.setImage(UIImage(systemName: "heart"), for: .normal
//            )
//            likeButton.tintColor = .white
//        }
    }

    
    func initUI() {
        initTitleLabel()
        initDescriptionLabel()
        initGradeImageViews()
        initSaveLabel()
        initTravelImageView()
        initLikeButton()
    }
    
    func initTitleLabel() {
        titleLabel.text = ""
        titleLabel.font = .systemFont(ofSize: 16, weight: .bold)
        titleLabel.numberOfLines = 1
    }
    
    func initDescriptionLabel() {
        descriptionLabel.text = ""
        descriptionLabel.font = .systemFont(ofSize: 14, weight: .semibold)
        descriptionLabel.textColor = .gray
        descriptionLabel.numberOfLines = 3
    }
    
    func initGradeImageViews() {
        gradeImageViews.forEach { imageView in
            imageView.image = UIImage(systemName: "star.fill")
            imageView.tintColor = .lightGray
        }
    }
    
    func initSaveLabel() {
        saveLabel.text = "0"
        saveLabel.font = .systemFont(ofSize: 12, weight: .semibold)
        saveLabel.textColor = .lightGray
        saveLabel.numberOfLines = 1
    }
    
    func initTravelImageView() {
        travelImageView.image = .none
        travelImageView.contentMode = .scaleAspectFill
        
        travelImageView.clipsToBounds = true
        travelImageView.layer.cornerRadius = 10
    }
    
    func initLikeButton() {
        likeButton.isHidden = true
        
        let symbolConfig = UIImage.SymbolConfiguration(pointSize: 22, weight: .semibold)
        likeButton.setPreferredSymbolConfiguration(symbolConfig, forImageIn: .normal)
    }
}
