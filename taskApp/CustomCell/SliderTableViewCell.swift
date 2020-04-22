//
//  SliderTableViewCell.swift
//  taskApp
//
//  Created by ankur rathi on 22/04/20.
//  Copyright © 2020 ankur rathi. All rights reserved.
//

import UIKit

class SliderTableViewCell: UITableViewCell, UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var sliderView: UIView!
    
    @IBOutlet weak var sliderCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        sliderCollectionView.delegate = self
        sliderCollectionView.dataSource = self
        
    }
    
    func configureBackground(){
        
        viewBackground(views: sliderView)
    }
    
    
    func viewBackground(views: UIView){
        views.layer.shadowColor = UIColor.gray.cgColor
        views.layer.shadowOffset = CGSize(width: 0.8, height: 1.0)
        views.layer.shadowOpacity = 0.8
        views.layer.masksToBounds = false
        views.layer.cornerRadius = 5
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        
        return cell1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 325, height: 200)
    }
    

    

}
