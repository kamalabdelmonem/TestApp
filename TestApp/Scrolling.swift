//
//  Scrolling.swift
//  TestApp
//
//  Created by kamal abdelmonem on 17/02/2023.
//

import UIKit

extension ViewController: UIScrollViewDelegate{
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.tag == 2 {
            if scrollView.contentOffset.y >= 246 {
                self.tableHeight.constant = scrollView.bounds.height - 54.0
                scrollView.setContentOffset(CGPoint(x: 0, y: 246), animated: false)
            }
            else{
                self.tableHeight.constant = CGFloat((self.allData[self.selectedIndex].count) * 44)
            }
        }else if scrollView == self.collectionView {
            let offSet = scrollView.contentOffset.x
            let width = scrollView.frame.width
            let horizontalCenter = width / 2
            let index = Int(offSet + horizontalCenter) / Int(width)
            if index == self.selectedIndex {
                return
            }
            searchBar.text = ""
            searchBar.resignFirstResponder()
            pageControl.currentPage = index
            filterdata = allData[index]
            selectedIndex = index
            DispatchQueue.main.async { [weak self] in
                self?.tableHeight.constant = CGFloat((self?.allData[index].count ?? 0) * 44)
                self?.tableView.reloadData()
            }
        }else if scrollView == self.tableView {
            if scrollView.contentOffset.y <= 0 {
                scrollView.setContentOffset(CGPoint(x: 0, y: tableView.bounds.minX), animated: false)
                self.scrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
                self.tableHeight.constant = CGFloat((self.allData[self.selectedIndex].count) * 44)
            }
        }
    }
    
}
