//
//  PostitsViewController.swift
//  Postits
//
//  Created by Motoyuki Ito on 5/22/21.
//

import UIKit

final class PostitsViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var postits: [Postit] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.register(UINib(nibName: String(describing: PostitsView.self), bundle: nil), forCellWithReuseIdentifier: String(describing: PostitsView.self))
        let postit1 = Postit(color: .red, lastEditDate: Date(), text: nil, size: nil)
        let postit2 = Postit(color: .red, lastEditDate: Date(), text: nil, size: nil)
        let postit3 = Postit(color: .red, lastEditDate: Date(), text: nil, size: nil)
        let postit4 = Postit(color: .red, lastEditDate: Date(), text: nil, size: nil)
        postits = [postit1, postit2, postit3, postit4]
        
    }


}

extension PostitsViewController: UICollectionViewDelegate {
    
}

extension PostitsViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        postits.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: PostitsView.self), for: indexPath) as? PostitsView
        cell?.layer.cornerRadius = 10
        
        if indexPath.row == 0 {
            cell?.label.text = "何か書いてみよう"
        }
        
        switch indexPath.row {
        case 0: cell?.backgroundColor = .red
        case 1: cell?.backgroundColor = .blue
        case 2: cell?.backgroundColor = .green
        case 3: cell?.backgroundColor = .purple
        default: break
        }
        
        
        
        cell?.layer.masksToBounds = true
        return cell ?? UICollectionViewCell()
    }
}

extension PostitsViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width - 30, height: 200)
    }
}
