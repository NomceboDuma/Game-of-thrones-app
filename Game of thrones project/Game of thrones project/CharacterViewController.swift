//
//  ViewController.swift
//  Game Of thrones project
//
//  Created by Nomcebo Duma on 2020/02/23.
//

import UIKit

class CharacterViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var heroes = [GameOfThronesDatum]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        downloadJSON {
            self.tableView.reloadData()
            print("success")
        }
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        let hero = heroes[indexPath.row]
        cell.textLabel?.text = hero.firstName!.capitalized
        cell.detailTextLabel?.text = hero.lastName!.capitalized
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "Show Detail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ScreenViewController {
            destination.hero = heroes[tableView.indexPathForSelectedRow!.row]
        }
    }
    
    
    func downloadJSON(completed: @escaping () -> ()) {
        let url = URL(string: "https://thronesapi.com/api/v2/Characters")
        
        URLSession.shared.dataTask(with: url!) { data, response, err in
            
            if err == nil {
                do {
                    self.heroes = try JSONDecoder().decode([GameOfThronesDatum].self, from: data!)
                    DispatchQueue.main.async {
                        completed()
                    }
                }
                catch {
                    print("error fetching data from api")
                }
            }
        }.resume()
    }

}


    
