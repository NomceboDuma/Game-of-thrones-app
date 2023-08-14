//
//  PscreenViewController.swift
//  Game of thrones project
//
//  Created by Nomcebo Duma on 2023/02/13.
//

import UIKit

class PscreenViewController: UIViewController {

    @IBOutlet weak var imageView3: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = imageView.frame.height / 2
        imageView2.layer.masksToBounds = true
        imageView2.layer.cornerRadius = imageView2.frame.height / 2
        imageView3.layer.masksToBounds = true
        imageView3.layer.cornerRadius = imageView3.frame.height / 2

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
