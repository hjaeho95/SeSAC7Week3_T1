//
//  CountryExploreViewController.swift
//  SeSAC7Week3_T1
//
//  Created by ez on 7/16/25.
//

import UIKit

class CountryExploreViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    
    
    
    @IBOutlet var textField: UITextField!
    @IBOutlet var segmentedControl: UISegmentedControl!
    @IBOutlet var collectionView: UICollectionView!
    
    let cities: [City] = [
        City(city_name: "방콕", city_english_name: "Bangkok", city_explain: "방콕, 파타야, 후아힌, 코사멧, 코사무이", city_image: "https://images.unsplash.com/photo-1716872491897-078d9b89be49?q=80&w=3540&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domestic_travel: false),
        City(city_name: "오사카", city_english_name: "Osaka", city_explain: "오사카, 교토, 고베, 나라", city_image: "https://images.unsplash.com/photo-1716881768763-4088391a445e?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domestic_travel: false),
        City(city_name: "다낭", city_english_name: "Danang", city_explain: "다낭, 호이안, 후에", city_image: "https://images.unsplash.com/photo-1716619240251-54a22779ed8a?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domestic_travel: false),
        City(city_name: "제주", city_english_name: "Jeju", city_explain: "제주, 섭지코지, 성산일출봉", city_image: "https://images.unsplash.com/photo-1716565679084-2c3dbececc5e?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domestic_travel: true),
        City(city_name: "부산", city_english_name: "Busan", city_explain: "부산, 해운대, 마린시티", city_image: "https://images.unsplash.com/photo-1716619222059-62e8670293e6?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domestic_travel: true),
        City(city_name: "파리", city_english_name: "Paris", city_explain: "파리, 베르사유, 몽생미셀, 스트라스부르", city_image: "https://images.unsplash.com/photo-1715638427009-8b0fe7096838?q=80&w=3542&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domestic_travel: false),
        City(city_name: "시드니", city_english_name: "Sydney", city_explain: "시드니, 블루마운틴, 울릉공, 뉴캐슬", city_image: "https://images.unsplash.com/photo-1716117273853-75a1989029f2?q=80&w=3464&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domestic_travel: false),
        City(city_name: "전주", city_english_name: "Jeonju", city_explain: "전주, 한옥 마을, 오목대, 경기전", city_image: "https://images.unsplash.com/photo-1715646527352-3e9a4e406952?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domestic_travel: true),
        City(city_name: "밀라노", city_english_name: "Milano", city_explain: "밀라노, 꼬모, 베로나, 베르가모, 시르미오네", city_image: "https://plus.unsplash.com/premium_photo-1715616257496-5e14778bbc0c?q=80&w=3415&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domestic_travel: false),
        City(city_name: "리스본", city_english_name: "Lisbon", city_explain: "리스본, 신트라, 카스카이스, 오비두스", city_image: "https://images.unsplash.com/photo-1715559067654-d485ab2618aa?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domestic_travel: false),
        City(city_name: "서울", city_english_name: "Seoul", city_explain: "서울, 남산타워, 롯데타워, 경복궁", city_image: "https://images.unsplash.com/photo-1715880005923-0013a6820a72?q=80&w=3540&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domestic_travel: true),
        City(city_name: "두바이", city_english_name: "Dubai", city_explain: "두바이, 아부다비, 알 아인", city_image: "https://images.unsplash.com/photo-1715073145727-393bbded41d9?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domestic_travel: false),
        City(city_name: "홍콩", city_english_name: "Hongkong", city_explain: "홍콩, 마카오", city_image: "https://images.unsplash.com/photo-1715547748806-dab4f4dfbc85?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domestic_travel: false),
        City(city_name: "토론토", city_english_name: "Toronto", city_explain: "토론토, 나이아가라, 킹스턴, 블루마운틴", city_image: "https://images.unsplash.com/photo-1715645943531-a57960d41818?q=80&w=3540&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domestic_travel: false),
        City(city_name: "대전", city_english_name: "Daejeon", city_explain: "대전, 성심당", city_image: "https://plus.unsplash.com/premium_photo-1695084221958-079096c96e05?q=80&w=3461&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domestic_travel: true),
    ]
    
    var filteredCities: [City] = []
    var domestic: [City] = []
    var overseas: [City] = []
    
    var highlighting = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "인기 도시"
        
        configure()
        
        filteredCities = cities
        domestic = cities.filter { $0.domestic_travel == true }
        overseas = cities.filter { $0.domestic_travel == false }
    }
    
    func collectionViewLayout(_ layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout(), rowCount: CGFloat, columnCount: CGFloat, padding: CGFloat = 16, spacing: CGFloat = 16, direction: UICollectionView.ScrollDirection = .vertical) -> UICollectionViewFlowLayout {
        let itemRowCount = rowCount
        let itemColumnCount = columnCount
        
        let edgePadding = padding
        let itemSpacing = spacing
        
        let deviceWidth = UIScreen.main.bounds.width
        let deviceHeight = UIScreen.main.bounds.height
        
        let itemWidth = deviceWidth - (edgePadding * 2) - (itemSpacing * (itemRowCount - 1))
        let itemHeight = deviceHeight - (edgePadding * 2) - (itemSpacing * (itemColumnCount - 1))
        
        layout.itemSize = CGSize(width: itemWidth / itemRowCount, height: itemWidth / itemRowCount + 70)
        layout.sectionInset = .init(top: edgePadding, left: edgePadding, bottom: edgePadding, right: edgePadding)
        layout.minimumLineSpacing = itemSpacing
        layout.minimumInteritemSpacing = itemSpacing
        layout.scrollDirection = direction
        
        return layout
    }
    
    func configure() {
        collectionView.delegate = self
        collectionView.dataSource = self
//        tableView.delegate = self
//        tableView.dataSource = self
        
        collectionView.register(UINib(nibName: CountryExploreCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CountryExploreCollectionViewCell.identifier)
        
//        tableView.register(UINib(nibName: CountryExploreTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: CountryExploreTableViewCell.identifier)
//        
//        tableView.rowHeight = UITableView.automaticDimension
        
        configureTextField()
        configureSegmentedControl()
        
        let layout = UICollectionViewFlowLayout()
        
        collectionView.collectionViewLayout = collectionViewLayout(layout, rowCount: 2, columnCount: 3, padding: 32, spacing: 16)
//        tableView.rowHeight = UITableView.automaticDimension
    }
    
    func configureTextField() {
        textField.addTarget(self, action: #selector(textFieldDidEndOnExit), for: .editingDidEndOnExit)
    }
    
    func configureSegmentedControl() {
        segmentedControl.removeAllSegments()
        
        segmentedControl.insertSegment(withTitle: "모두", at: 0, animated: true)
        segmentedControl.insertSegment(withTitle: "국내", at: 1, animated: true)
        segmentedControl.insertSegment(withTitle: "해외", at: 2, animated: true)
        
        segmentedControl.selectedSegmentIndex = 0
        
        segmentedControl.addTarget(self, action: #selector(segmentedControlValueChanged), for: .valueChanged)
    }
    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return filteredCities.count
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: CountryExploreTableViewCell.identifier, for: indexPath) as! CountryExploreTableViewCell
//        
//        let city = filteredCities[indexPath.row]
//        
//        cell.configureCountryImageView(rowData: city)
//        cell.configureMainLabel(rowData: city, highlighting)
//        cell.configureSubtitleLabel(rowData: city, highlighting)
//        
//        return cell
//    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filteredCities.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CountryExploreCollectionViewCell.identifier, for: indexPath) as! CountryExploreCollectionViewCell
        
        let city = filteredCities[indexPath.row]
        
        cell.configureCountryImageView(rowData: city)
        cell.configureMainLabel(rowData: city, highlighting)
        cell.configureSubtitleLabel(rowData: city, highlighting)
        
        return cell
    }
    
    @objc func segmentedControlValueChanged(sender: UISegmentedControl) {
        
        highlighting = ""
        
        switch sender.selectedSegmentIndex {
        case 1:
            filteredCities = domestic
        case 2:
            filteredCities = overseas
        default:
            filteredCities = cities
        }
        
        collectionView.reloadData()
//        tableView.reloadData()
    }
    
    @objc func textFieldDidEndOnExit(sender: UITextField) {
        
        segmentedControlValueChanged(sender: segmentedControl)
        
        // whitespace 제거
        guard let text = sender.text?.trimmingCharacters(in: .whitespaces) else { return }
        
        if text == "" { return }
        
        // 대소문자 구분 없이 name, en_name, explain 중 포함되는 키워드 찾기
        filteredCities = filteredCities.filter {
            $0.city_name.localizedCaseInsensitiveContains(text) ||
            $0.city_english_name.localizedCaseInsensitiveContains(text) ||
            $0.city_explain.localizedCaseInsensitiveContains(text)
        }
        
        // 특정 문자 하이라이트
        highlighting = text
        
        collectionView.reloadData()
//        tableView.reloadData()
    }

}
