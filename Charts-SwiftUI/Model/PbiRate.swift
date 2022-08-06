//
//  PbiRate.swift
//  Charts-SwiftUI
//
//  Created by Aldair Cosetito Coral on 5/08/22.
//

import Foundation

struct PbiRate: Identifiable {
    var id: Int { year }
    let year: Int
    let percentage: Double
}

let pbiData: [PbiRate] = [
    PbiRate(year: 2001, percentage: 0.6),
    PbiRate(year: 2002, percentage: 5.5),
    PbiRate(year: 2003, percentage: 4.2),
    PbiRate(year: 2004, percentage: 5.0),
    PbiRate(year: 2005, percentage: 6.3),
    PbiRate(year: 2006, percentage: 7.5),
    PbiRate(year: 2007, percentage: 8.5),
    PbiRate(year: 2008, percentage: 9.1),
    PbiRate(year: 2009, percentage: 1.1),
    PbiRate(year: 2010, percentage: 8.3),
    PbiRate(year: 2011, percentage: 6.3),
    PbiRate(year: 2012, percentage: 6.1),
    PbiRate(year: 2013, percentage: 5.9),
    PbiRate(year: 2014, percentage: 2.4),
    PbiRate(year: 2015, percentage: 3.3),
    PbiRate(year: 2016, percentage: 4.0),
    PbiRate(year: 2017, percentage: 2.5),
    PbiRate(year: 2018, percentage: 4.0),
    PbiRate(year: 2019, percentage: 2.2),
    PbiRate(year: 2020, percentage: -13.10)
]
