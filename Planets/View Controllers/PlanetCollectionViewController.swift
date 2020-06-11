//
//  PlanetCollectionViewController.swift
//  Planets
//
//  Created by John McCants on 6/10/20.
//  Copyright © 2020 Lambda Inc. All rights reserved.
//

import UIKit


class PlanetCollectionViewController: UICollectionViewController {
    
    let planets = PlanetController()

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        collectionView.reloadData()
    }
    
  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        
        return planets.planets.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PlanetCell", for: indexPath) as? PlanetCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.cellImage.image = planets.planets[indexPath.row].image
        cell.planetLabel.text = planets.planets[indexPath.row].name

    
        // Configure the cell
    
        return cell
    }


}
