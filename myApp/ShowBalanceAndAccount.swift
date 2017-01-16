        //
//  ShowBalanceAndAccount.swift
//  myApp
//
//  Created by SaifRehman on 1/14/17.
//  Copyright © 2017 SaifRehman. All rights reserved.
//

import UIKit

class ShowBalanceAndAccount: UIView {
    @IBOutlet weak var ShowBalanceAndAccountView: UIButton!

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        Bundle.main.loadNibNamed("ShowBalanceAndAccount",owner:self,options:nil)
        self.addSubview(self.ShowBalanceAndAccountView)
    }

}
