//
//  SummaryVC.swift
//  DDSvsRegCovid
//
//  Created by Ben Huggins on 6/21/21.
//

import UIKit

class SummaryVC: UITableViewController {
   
    var countries: [Country] = [] {
        didSet {
            DispatchQueue.main.async{
                
                self.tableView.reloadData()
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        getCountries()

        }

    func getCountries() {
        NetworkManager.shared.getCountries { result in
           
            // This is result type
            switch result {
            case .success(let countries):
            
                self.countries = countries //*** the countries that we get back from network are being set to the countries array [] declared above
                print("🍔🍔🍔🍔🍔🍔\(self.countries)")
                
                // update DataSource
  
            case .failure(let error):
                print(error.rawValue)
                // call the custom alert from here
            }
            
        }
    }
    
    }

extension SummaryVC {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
 
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CountriesTableViewCell
     
        let countries = self.countries[indexPath.row]
        
        cell.itemLandingPad = countries
        
        return cell
        
    }
}
    




