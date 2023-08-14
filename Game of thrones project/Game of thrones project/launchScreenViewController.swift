//
//  launchScreenViewController.swift
//  Game of thrones project
//
//  Created by Nomcebo Duma on 2023/02/17.
//

import UIKit

class launchScreenViewController: UIViewController {

    @IBOutlet weak var imageView4: UIImageView!
    
    private let imageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 150, height: 150))
        imageView.image = UIImage(named: "Logo")
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageView)
        view.backgroundColor = .link
     
    }
    override func viewDidLayoutSubviews() {
        super.viewWillLayoutSubviews()
        imageView.center = view.center
    }

        
    }
