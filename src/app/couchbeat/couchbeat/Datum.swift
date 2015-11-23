//
//  Datum.swift
//  couchbeat
//
//  Created by Stephen Butler on 11/22/15.
//  Copyright © 2015 com.stephbu. All rights reserved.
//

import Foundation

class Datum<T>
{
    init(value : T)
    {
        Value = value
    }

    var Value: T?
    var Next: Datum?
}
