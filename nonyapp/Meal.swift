//
//  Meal.swift
//  nonyapp
//
//  Created by nonylene on 2/20/16.
//  Copyright © 2016 nonylene. All rights reserved.
//

import UIKit

class Meal {

    var name: String
    var photo: UIImage?
    var rating: Int

    init?(name: String, photo: UIImage?, rating: Int) {
        self.name = name
        self.photo = photo
        self.rating = rating
        if name.isEmpty || rating < 0 {
            return nil
        }
    }
}
