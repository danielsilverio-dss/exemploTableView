//
//  ViewController.swift
//  exemploTableView
//
//  Created by Usuário Convidado on 04/08/17.
//  Copyright © 2017 Usuário Convidado. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var animal = ["Urso", "Leão", "Rinoceronte", "Elefante", "Girafa"]
    var foto = [#imageLiteral(resourceName: "urso"), #imageLiteral(resourceName: "leao"), #imageLiteral(resourceName: "rino"), #imageLiteral(resourceName: "ele"), #imageLiteral(resourceName: "girafa")]
    
    @IBOutlet weak var minhaTabela: UITableView!

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animal.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        celula.textLabel?.text = animal[indexPath.row]
        celula.imageView?.image = foto[indexPath.row]
        celula.detailTextLabel?.text = "bla bla bla"
        celula.accessoryType = .disclosureIndicator
        return celula
    }
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 75
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let barra = UIImageView(image: #imageLiteral(resourceName: "rodape"))
        return barra
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cabec = UIImageView(image: #imageLiteral(resourceName: "cabecalho"))
        return cabec
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minhaTabela.dataSource = self
        minhaTabela.delegate = self
        // as linhas a cima podem ser substituidas por ligações feitas no connection inspector
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

