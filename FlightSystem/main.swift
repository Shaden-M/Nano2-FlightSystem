//
//  main.swift
//  Flight1
//
//  Created by Shaden Almuhaidib on 28/12/2021.
//

import Foundation

print ("Flight reservation")
print("___________________________________________________")
print("             ")
print("Select trip type")
print("1- Return   2- One Way")
if let tripType = readLine(){
    if  tripType == "1" {
        print(Departure())
        print(Arrival())
        print(DepartureDate())
        print(ReturnDate())
        print("to book a flight please fill in the form")
        print("Enter your name")
        var Name = readLine()!
        print(Name,"Your flight has been booked")
    }
    else if  tripType == "2" {
        print(Departure())
        print(Arrival())
        print(DepartureDate())
        print("to book a flight please fill in the form")
        print("Enter your name")
        var Name = readLine()!
        print(Name,"Your flight has been booked")
    }
    else {
        print("I Can't recognize your input")
    }
  
}








print("             ")
func Departure (){

    print("Departure")
    print(".............")

    enum Departure: CaseIterable {
        case Riyadh, Jeddah, Dammam
    }
    var currentDeparture: Departure
    for currentDeparture in Departure.allCases {
        print(currentDeparture) }
    print("select your Departure Airport")
    if let currentDeparture1 = readLine(){
        switch currentDeparture1{
        case "Riyadh":
            print("RUH.")
        case "Jeddah":
            print("JED.")
        case "Dammam":
            print("DMM.")
            
            
        default:
            print("No Departure Airport selected")
        }
    }
}


print("             ")
func Arrival(){
    print("Arrival")
    print(".............")
    enum Arrival: CaseIterable {
        case Paris, NewYork, London, HongKong
    }
    var Arrival1 : Arrival
    for Arrival1 in Arrival.allCases {
        print(Arrival1) }
    print("select your Arrival destination")
    if let Arrival2 = readLine(){
        switch Arrival2{
        case "Paris":
            print("CDG.")
        case "NewYork":
            print("JFK.")
        case "London":
            print("LHR.")
        case"HongKong":
            print("HKG.")
            
            
        default:
            print("No Arrival destination selected")
        }
    }
}


print("             ")
func DepartureDate (){
    print("Select Departure Date")
    print("1- 1 January,2022")
    print("2- 3 January,2022")
    print("3- 5 January,2022")
    
    if let currentDepartureDate = readLine(){
        switch currentDepartureDate {
        case "1":
            print("1 January,2022.")
        case "2":
            print("3 January,2022.")
        case "3":
            print("5 January,2022.")
            
            
        default:
            print("No Departure Date selected")
        }
    }
}


print("             ")
func ReturnDate (){
    print(" Select Return Date")
    print("1- 5 January,2022")
    print("2- 10 January,2022")
    print("3- 15 January,2022")
    if let currentReturnDate = readLine(){
        switch currentReturnDate {
        case "1":
            print("5 January,2022.")
        case "2":
            print("10 January,2022.")
        case "3":
            print("15 January,2022.")
            
            
        default:
            print("No Return Date selected")
        }
    }
}







