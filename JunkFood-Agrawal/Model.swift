//
//  Model.swift
//  JunkFood-Agrawal
//
//  Created by LTCITE on 3/7/18.
//  Copyright © 2018 LTCITE. All rights reserved.
//

import Foundation

struct FoodData {
    var Name : String
    var Calories : Double
    var Tally : Int
}


class FoodRecorder {
    var Foods : [FoodData]
    
    init() {
        Foods = []
    }
    
    func loadData(){
        Foods.append(FoodData(Name: "Popcorn", Calories: 106, Tally: 1))
        Foods.append(FoodData(Name: "Coke", Calories: 140, Tally: 1))
        Foods.append(FoodData(Name: "Potato Chips", Calories: 152, Tally: 1))
    }
    
    func increaseTally(foreItem i : Int){
        Foods[i].Tally = Foods[i].Tally + 1
    }
    
    func getCalories(forItem i : Int) -> Double{
        return Foods[i].Calories * Double(Foods[i].Tally)
    }
    
    func report(forItem i : Int) -> String {
        return "The calories consumed for \(Foods[i].Name) is \(self.getCalories(forItem: i))"
    }
    
    func totalCalories() -> Double{
        var sum : Double = 0
        for i in 0 ..< Foods.count{
            sum += getCalories(forItem: i)
        }
        return sum
    }
    
    func combinedReport() -> String{
        return "Total calories consumed \(self.totalCalories())"
    }
    
    func reset(){
        for i in 0 ..< Foods.count{
            Foods[i].Tally = 0
        }
    }
}

