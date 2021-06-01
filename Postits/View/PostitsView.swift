//
//  PostitsView.swift
//  Postits
//
//  Created by Motoyuki Ito on 6/2/21.
//

import UIKit

final class PostitsView: UICollectionViewCell
{

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func loadXib(){
        if let view = Bundle.main.loadNibNamed(String(describing: type(of: self)), owner: self, options: nil)?.first as? UIView {
            view.frame = self.bounds
            self.addSubview(view)
        }
        self.layer.cornerRadius = 10
    }
}
