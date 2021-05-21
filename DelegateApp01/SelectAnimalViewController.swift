//
//  SelectAnimalViewController.swift
//  DelegateApp01
//
//  Created by Parker Chen on 2021/5/21.
//

import UIKit

//所定的規則: Protocol
protocol SelectAnimalViewControllerDelegate {
    func selectAnimalViewController(_ controller: SelectAnimalViewController, didSelect animal: Animal)
}

class SelectAnimalViewController: UIViewController {
    //delegate的型別是 SelectAnimalViewControllerDelegate (Protocol)
    var delegate : SelectAnimalViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func selectAnimal(_ sender: UIButton) {
        switch sender.currentTitle {
        case "🐈‍⬛":
            //這時候已經叫第一頁做這件事了(顯示動物圖案)
            delegate?.selectAnimalViewController(self, didSelect: .cat)
        case "🐕":
            delegate?.selectAnimalViewController(self, didSelect: .dog)
        case "🐠":
            delegate?.selectAnimalViewController(self, didSelect: .fish)
        default:
            break
        }
        //然後畫面再切到第一頁就看到已經做過的結果了
        navigationController?.popViewController(animated: true)
    }
}
