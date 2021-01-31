//
//  ImageViewController.swift
//  The Happiness Trinity
//
//  Created by Jimmy LI on 1/30/21.
//  Copyright © 2021 Sky H. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    let access_token = "&client_id=idPu07ljZv9059UOqwNgNRGNUmZgMr92hQChgeVA6Pc"
    let base_url = "https://api.unsplash.com/search/photos?query="
    var query = ""

    let group = DispatchGroup()
    
    @IBAction func onClickDog(_ sender: Any) {
        group.enter()
        query = query + "dog"
        group.leave()
        
        group.notify(queue: DispatchQueue.main){
            self.performSegue(withIdentifier: "onClickPreference", sender: self)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        let pictureCollectionsViewController = segue.destination as! PictureCollectionViewController
        pictureCollectionsViewController.query = self.query
    }


}
