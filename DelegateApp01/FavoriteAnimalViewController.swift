//
//  FavoriteAnimalViewController.swift
//  DelegateApp01
//
//  Created by Parker Chen on 2021/5/21.
//

import UIKit

class FavoriteAnimalViewController: UIViewController {

    @IBOutlet weak var animalImageView: UIImageView!

    @IBSegueAction func showSelectAnimal(_ coder: NSCoder) -> SelectAnimalViewController? {
        let selectAnimalViewController = SelectAnimalViewController(coder: coder)
        //指定代理人為自己
        selectAnimalViewController?.delegate = self
        return selectAnimalViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension FavoriteAnimalViewController : SelectAnimalViewControllerDelegate {
    //自訂所要呈現的動作
    func selectAnimalViewController(_ controller: SelectAnimalViewController, didSelect animal: Animal) {
        animalImageView.image = UIImage(named: animal.rawValue)
    }
}

