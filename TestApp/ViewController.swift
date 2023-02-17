//
//  ViewController.swift
//  TestApp
//
//  Created by kamal abdelmonem on 17/02/2023.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableHeight: NSLayoutConstraint!
    
    let icons = ["icon0","icon1","icon2","icon3"]
    let listData0 = ["text 1","text 2","text 3","text 4","text 5","text 6","text 7","text 8","text 9","text 10","text 11","text 12","text 13","text 14","text 15","text 16","text 17","text 18","text 19","text 20","text 22","text 23","text 24","text 25"]
    let listData1 = ["description 1","description 2","description 3","description 4","description 5","description 6","description 7","description 8","description 9","description 10","description 11","description 12"]
    let listData2 = ["title 1","title 2","title 3","title 4","title 5","title 6","title 7","title 8"]
    let listData3 = ["lable 1","lable 2","lable 3","lable 4"]
    var filterdata: [String] = []
    var allData: [[String]] = []
    var selectedIndex = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        setupData()
        setupUI()
        setupCollection()
        setupTable()
    }
    func setupData(){
        allData.append(listData0)
        allData.append(listData1)
        allData.append(listData2)
        allData.append(listData3)
        filterdata = allData[selectedIndex]
    }
    func setupUI(){
        scrollView.delegate = self
        pageControl.numberOfPages = self.icons.count
        self.tableHeight.constant = CGFloat((self.allData[selectedIndex].count) * 44)
    }
    
}
