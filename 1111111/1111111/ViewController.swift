//
//  ViewController.swift
//  1111111
//
//  Created by NacBook Pro on 2018/1/4.
//  Copyright © 2018年 NacBook Pro. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let  imageArray = ["moon-1859616_1920","northern-lights-2812374_1920","saint-mary-lake-3044265_1920","witchs-house-1635770_1920"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return   imageArray.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath)  as! myCellCollectionViewCell
        cell.imageView.image = UIImage(named: imageArray[indexPath.row] + ".jpg")
        return cell
    }
}

