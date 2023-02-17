//
//  Collection.swift
//  TestApp
//
//  Created by kamal abdelmonem on 17/02/2023.
//

import UIKit

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{
    func setupCollection(){
        collectionView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        collectionView.register(UINib(nibName: "BannerCVC", bundle: .none), forCellWithReuseIdentifier: "BannerCVC")
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.reloadData()
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return icons.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "BannerCVC", for: indexPath) as! BannerCVC
        cell.setupCell(icon: icons[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        return CGSize(width: collectionView.bounds.width, height: collectionView.bounds.height)
    }
}
