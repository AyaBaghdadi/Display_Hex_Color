
//
//  Created by Aya Baghdadi.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    
    //---------------------------------------------------------------------------------------------------
    // Start Collection view delegate methods
    //---------------------------------------------------------------------------------------------------

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.myColorList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath as IndexPath) as! ColorCell

        //------------------------
        // Start Assign Hex color
        //------------------------
        cell.colorViewCell.backgroundColor = UIColor(hexString: "#\(self.myColorList[indexPath.row])")
        //------------------------
        // End
        //------------------------
        
        return cell
    }
    
    //---------------------------------------------------------------------------------------------------
    // End
    //---------------------------------------------------------------------------------------------------


    @IBOutlet weak var collectionView: UICollectionView!
    
    var myColorList:[String]! = ["BB8FCE" , "DAF7A6" , "CD5C5C" , "E9967A" , "A6ACAF" , "e3c6d6" , "ff3b7d" , "0BF3D0" , "ff6600" , "b380ff" , "ccff33" , "F3EF0B" , "cfe0f0" , "7E5109" , "d9b99b" , "ffccff" , "5a4099" , "900C3F" , "99ffcc" , "996633" , "ccccff" , "33ff77" , "FFC300" , "FFA07A" , "ffb1b3" , "ffd6b1" , "4E0BF3"  , "ffff00" , "a521c1" , "DFFF00" , "afaccc" , "bce9b6" , "DE30C1" , "ff6600" , "CCCCFF" , "F30B19" ]


    override func viewDidLoad() {
        super.viewDidLoad()

    }


}

