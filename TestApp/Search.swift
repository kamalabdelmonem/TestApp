//
//  Search.swift
//  TestApp
//
//  Created by kamal abdelmonem on 17/02/2023.
//

import UIKit

extension ViewController: UISearchBarDelegate
{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filterdata = []
        if searchText == "" {
            filterdata = allData[selectedIndex]
        }
        for word in allData[selectedIndex] {
            if word.uppercased().contains(searchText.uppercased()){
                filterdata.append(word)
            }
        }
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
}
