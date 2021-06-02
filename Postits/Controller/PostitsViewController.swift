//
//  PostitsViewController.swift
//  Postits
//
//  Created by Motoyuki Ito on 5/22/21.
//

import UIKit

final class PostitsViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var Postits: [Postits] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.register(UINib(nibName: String(describing: PostitsView.self), bundle: nil), forCellWithReuseIdentifier: String(describing: PostitsView.self))
    }


}

extension PostitsViewController: UICollectionViewDelegate {
    
}

extension PostitsViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: PostitsView.self), for: indexPath)
        cell.layer.cornerRadius = 10
        cell.backgroundColor = .red
        cell.layer.masksToBounds = true
        return cell
    }
}

extension PostitsViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width - 30, height: 200)
    }
}
