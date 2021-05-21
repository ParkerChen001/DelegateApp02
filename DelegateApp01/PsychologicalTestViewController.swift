//
//  PsychologicalTestViewController.swift
//  DelegateApp01
//
//  Created by Parker Chen on 2021/5/21.
//

import UIKit

class PsychologicalTestViewController: UIViewController {
    @IBOutlet weak var showLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBSegueAction func showSelectAnimal(_ coder: NSCoder) -> SelectAnimalViewController? {
        let selectAnimalController = SelectAnimalViewController(coder: coder)
        //指定代理人為自己
        selectAnimalController?.delegate = self
        return selectAnimalController
    }
}
extension PsychologicalTestViewController : SelectAnimalViewControllerDelegate {
    func selectAnimalViewController(_ controller: SelectAnimalViewController, didSelect animal: Animal) {
        //自訂所要呈現的動作
        switch animal {
        case .cat:
            showLabel.text = "喜歡 🐈‍⬛ 的人都很可愛"
        case .dog:
            showLabel.text = "喜歡 🐕 的人都很有趣"
        case .fish:
            showLabel.text = "喜歡 🐠 的人都很聰明"
        }
    }
}
