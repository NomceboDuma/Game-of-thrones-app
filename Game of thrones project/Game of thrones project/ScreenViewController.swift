//
//  ScreenViewController.swift
//  Game Of Thrones Project
//
//  Created by Nomcebo Duma on 2023/02/13
//

import UIKit

extension UIImageView {
    func downloaded(from url: URL, contentMode mode: ContentMode = .scaleAspectFit) {
        contentMode = mode
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
                else { return }
            DispatchQueue.main.async() { [weak self] in
                self?.image = image
            }
        }.resume()
    }
    func downloaded(from link: String, contentMode mode: ContentMode = .scaleAspectFit) {
        guard let url = URL(string: link) else { return }
        downloaded(from: url, contentMode: mode)
    }
}

class ScreenViewController: UIViewController {
    
    
    @IBOutlet weak var heroImg: UIImageView!

    @IBOutlet weak var Namefirst: UILabel!
    
    @IBOutlet weak var NameLast: UILabel!
    
    @IBOutlet weak var NameFull: UILabel!
    
    @IBOutlet weak var titl: UILabel!
    
    @IBOutlet weak var famili: UILabel!
    
    
    
    @IBOutlet weak var Namefirstcontainer: UIView!
    
    
    @IBOutlet weak var NameLastcontainer1: UIView!
    
    @IBOutlet weak var NameFullcontainer2: UIView!
    
    @IBOutlet weak var titlcontainer3: UIView!
    
    
    @IBOutlet weak var Familicontainer4: UIView!
    
    
    
    var hero: GameOfThronesDatum?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Namefirstcontainer.layer.cornerRadius = 20
        Namefirstcontainer.layer.masksToBounds = true
        Namefirstcontainer.backgroundColor = .white.withAlphaComponent(0.3)
        
        
    
        NameLastcontainer1.layer.cornerRadius = 20
        NameLastcontainer1.layer.masksToBounds = true
        NameLastcontainer1.backgroundColor = .white.withAlphaComponent(0.3)
        
        
        NameFullcontainer2.layer.cornerRadius = 20
        NameFullcontainer2.layer.masksToBounds = true
        NameFullcontainer2.backgroundColor = .white.withAlphaComponent(0.3)
       
        
       titlcontainer3.layer.cornerRadius = 20
        titlcontainer3.layer.masksToBounds = true
        titlcontainer3.backgroundColor = .white.withAlphaComponent(0.3)
        
        
        Familicontainer4.layer.cornerRadius = 20
        Familicontainer4.layer.masksToBounds = true
        Familicontainer4.backgroundColor = .white.withAlphaComponent(0.3)
         
        
        
        heroImg.layer.masksToBounds = true
        heroImg.layer.cornerRadius = heroImg.frame.height / 2
        

        Namefirst.text = hero?.firstName
        NameLast.text = hero?.lastName
        NameFull.text = hero?.fullName
        famili.text = hero?.family
        titl.text = hero?.title
        
        let imgUrl = "https://thronesapi.com/assets/images/" + (hero?.image)!
        
        print(imgUrl)
        heroImg.downloaded(from: imgUrl)
        
    }

}








