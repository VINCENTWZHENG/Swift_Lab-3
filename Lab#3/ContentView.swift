//
//  ContentView.swift
//  Lab#3
//
//  Created by Vincent on 9/23/22.
//

import SwiftUI

struct ContentView: View {
    @State private var card1:String = "card1"
    @State private var card2:String = "card2"
    @State private var card3:String = "card3"
    @State private var card4:String = "card4"
    @State private var card5:String = "card5"
    @State private var card6:String = "card6"
    @State private var card7:String = "card7"
    @State private var card8:String = "card8"
    @State private var card9:String = "card9"
    @State private var card10:String = "card10"
    
    @State private var resultMessage1 = ""
    @State private var resultMessage2 = ""
    

    @State private var ValueHighCard:String = ""
    @State private var ValueLowCard:String = ""
    @State private var Sum:String = ""
    @State private var Freq:String = ""
    @State private var FreqValue:String = ""
    @State private var Pos_High:String = ""
    @State private var Pos_Low:String = ""

    @State private var j = 1.0


    
    func getValue()  {
        
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        
        let ValueCard1 = card1.filter{ $0.isNumber } // String
        let c1 = nf.number(from: ValueCard1)?.intValue ?? 0 // Int
        
        let ValueCard2 = card2.filter{ $0.isNumber } // String
        let c2 = nf.number(from: ValueCard2)?.intValue ?? 0 // Int
        
        let ValueCard3 = card3.filter{ $0.isNumber } // String
        let c3 = nf.number(from: ValueCard3)?.intValue ?? 0 // Int
        
        let ValueCard4 = card4.filter{ $0.isNumber } // String
        let c4 = nf.number(from: ValueCard4)?.intValue ?? 0 // Int
        
        let ValueCard5 = card5.filter{ $0.isNumber } // String
        let c5 = nf.number(from: ValueCard5)?.intValue ?? 0 // Int
        
        let ValueCard6 = card6.filter{ $0.isNumber } // String
        let c6 = nf.number(from: ValueCard6)?.intValue ?? 0 // Int
        
        let ValueCard7 = card7.filter{ $0.isNumber } // String
        let c7 = nf.number(from: ValueCard7)?.intValue ?? 0 // Int
        
        let ValueCard8 = card8.filter{ $0.isNumber } // String
        let c8 = nf.number(from: ValueCard8)?.intValue ?? 0 // Int
        
        let ValueCard9 = card9.filter{ $0.isNumber } // String
        let c9 = nf.number(from: ValueCard9)?.intValue ?? 0 // Int
        
        let ValueCard10 = card10.filter{ $0.isNumber } // String
        let c10 = nf.number(from: ValueCard10)?.intValue ?? 0 // Int
        
        let Num = [Int]([c1,c2,c3, c4, c5, c6, c7, c8, c9, c10])
        //------------------------------------------------
        // Compute High
        //------------------------------------------------
        let maxV = String(Num.max() ?? 0)
        //------------------------------------------------
        // Compute Low
        //------------------------------------------------
        let minV = String(Num.min() ?? 0)
        //------------------------------------------------
        // Compute Sum
        //------------------------------------------------
        var sum = 0
        for i in Num {
            sum += i
        }
        let sum_String = String(sum)
        //------------------------------------------------
        // Compute Pos# of High
        //------------------------------------------------
        for posH in 0...9 {
            if Num[posH] == (Num.max() ?? 0){
                Pos_High = Pos_High + "#" + String(posH+1) + " "
            }
        }
        //------------------------------------------------
        // Compute Pos# of Low
        //------------------------------------------------
        for posL in 0...9 {
            if Num[posL] == (Num.min() ?? 0){
                Pos_Low = Pos_Low + "#" + String(posL+1) + " "
            }
        }
        //------------------------------------------------
        // Compute Freq(most)
        //------------------------------------------------
        var counts = [Int: Int]()
        Num.forEach { counts[$0] = (counts[$0] ?? 0) + 1 }
        let MaxFreq = Array(counts.values).max() ?? 0
        for (key, value) in counts{
            if value == MaxFreq {
                FreqValue += String(key) + " "
            }
        }
        Freq = String(MaxFreq)
        
        //------------------------------------------------
        ValueHighCard = maxV
        ValueLowCard = minV
        Sum = sum_String

    }
    
    
    var body: some View {
        VStack{
            //----------------------------------------
            // Line 1
            //----------------------------------------
            HStack{
                Spacer()
                    .frame(width: 60.0)
                ZStack{
                    Image(card1)
                        .resizable()
                    Color.black
                        .opacity(j)
                    Text("#1")
                        .foregroundColor(Color.white)
                        .opacity(j)
                        .font(.title)
                }
                Spacer()
                    .frame(width: 50.0)
                ZStack{
                    Image(card2)
                        .resizable()
                    Color.black
                        .opacity(j)
                    Text("#2")
                        .foregroundColor(Color.white)
                        .opacity(j)
                        .font(.title)
                }
                Spacer()
                    .frame(width: 60.0)
            } //end Hstack
            //----------------------------------------
            // Line 2
            //----------------------------------------
            HStack{
                Spacer()
                    .frame(width: 60.0)
                ZStack{
                    Image(card3)
                        .resizable()
                    Color.black
                        .opacity(j)
                    Text("#3")
                        .foregroundColor(Color.white)
                        .opacity(j)
                        .font(.title)
                }
                Spacer()
                    .frame(width: 50.0)
                ZStack{
                    Image(card4)
                        .resizable()
                    Color.black
                        .opacity(j)
                    Text("#4")
                        .foregroundColor(Color.white)
                        .opacity(j)
                        .font(.title)
                }
                Spacer()
                    .frame(width: 60.0)
                
            } //end Hstack
            //----------------------------------------
            // Line 3
            //----------------------------------------
            HStack{
                Spacer()
                    .frame(width: 60.0)
                ZStack{
                    Image(card5)
                        .resizable()
                    Color.black
                        .opacity(j)
                    Text("#5")
                        .foregroundColor(Color.white)
                        .opacity(j)
                        .font(.title)
                }
                Spacer()
                    .frame(width: 50.0)
                ZStack{
                    Image(card6)
                        .resizable()
                    Color.black
                        .opacity(j)
                    Text("#6")
                        .foregroundColor(Color.white)
                        .opacity(j)
                        .font(.title)
                }
                Spacer()
                    .frame(width: 60.0)
                
            } //end Hstack
            //----------------------------------------
            // Line 4
            //----------------------------------------
            HStack{
                Spacer()
                    .frame(width: 60.0)
                ZStack{
                    Image(card7)
                        .resizable()
                    Color.black
                        .opacity(j)
                    Text("#7")
                        .foregroundColor(Color.white)
                        .opacity(j)
                        .font(.title)
                }
                Spacer()
                    .frame(width: 50.0)
                ZStack{
                    Image(card8)
                        .resizable()
                    Color.black
                        .opacity(j)
                    Text("#8")
                        .foregroundColor(Color.white)
                        .opacity(j)
                        .font(.title)
                }
                Spacer()
                    .frame(width: 60.0)
                
            } //end Hstack
            //----------------------------------------
            // Line 5
            //----------------------------------------
            HStack{
                Spacer()
                    .frame(width: 60.0)
                ZStack{
                    Image(card9)
                        .resizable()
                    Color.black
                        .opacity(j)
                    Text("#9")
                        .foregroundColor(Color.white)
                        .opacity(j)
                        .font(.title)
                }
                Spacer()
                    .frame(width: 50.0)
                ZStack{
                    Image(card10)
                        .resizable()
                    Color.black
                        .opacity(j)
                    Text("#10")
                        .foregroundColor(Color.white)
                        .opacity(j)
                        .font(.title)
                }
                Spacer()
                    .frame(width: 60.0)
                
            } //end Hstack
            
            //----------------------------------------
            // Button
            //----------------------------------------
            HStack{
                Button(action: {
                    j=0
                    var randomNumber:Int = 0
                    for i in 1...10 {
                        if  i == 1 {
                            randomNumber = Int.random(in: 1...10)
                            card1 = "card" + String(randomNumber)
                        }
                        else if i == 2 {
                            randomNumber = Int.random(in: 1...10)
                            card2 = "card" + String(randomNumber)
                        }
                        else if i == 3 {
                            randomNumber = Int.random(in: 1...10)
                            card3 = "card" + String(randomNumber)
                        }
                        else if i == 4 {
                            randomNumber = Int.random(in: 1...10)
                            card4 = "card" + String(randomNumber)
                        }
                        else if i == 5 {
                            randomNumber = Int.random(in: 1...10)
                            card5 = "card" + String(randomNumber)
                        }
                        else if i == 6 {
                            randomNumber = Int.random(in: 1...10)
                            card6 = "card" + String(randomNumber)
                        }
                        else if i == 7 {
                            randomNumber = Int.random(in: 1...10)
                            card7 = "card" + String(randomNumber)
                        }
                        else if i == 8 {
                            randomNumber = Int.random(in: 1...10)
                            card8 = "card" + String(randomNumber)
                        }
                        else if i == 9 {
                            randomNumber = Int.random(in: 1...10)
                            card9 = "card" + String(randomNumber)
                        }
                        else if i == 10 {
                            randomNumber = Int.random(in: 1...10)
                            card10 = "card" + String(randomNumber)
                        }
                    }
                    getValue()
                    resultMessage1 = "High Card:" + ValueHighCard + "\n" + "Low Card:" + ValueLowCard + "\n" + "Sum :" + Sum
                    resultMessage2 = "Pos# of High :" + Pos_High + "\n" + "Pos# of Low :" + Pos_Low + "\n" + "Freq : " + FreqValue + ": " + Freq + "times"
                    Pos_High = ""
                    Pos_Low = ""
                    FreqValue = ""
                }, label: {
                    Text("RANDON")
                        .padding(.trailing)
                        .foregroundColor(Color.cyan)
                        .font(.title3)
                })
                Button(action: {
                    j=1
                    ValueHighCard = ""
                    ValueLowCard = ""
                    Sum = ""
                    Pos_High = ""
                    Pos_Low = ""
                    FreqValue = ""
                    Freq = ""
                    resultMessage1 = ""
                    resultMessage2 = ""
                }, label: {
                    Text("RESTART")
                        .padding(.horizontal)
                        .foregroundColor(Color.cyan)
                        .font(.title3)
                })

            } // End Hstack
            HStack{
                Text(resultMessage1)
                    .frame(width: 130,height:80,alignment: .leading)
                    .background(Color.cyan)
                    .foregroundColor(Color.black)
                    .bold()
                Spacer()
                    .frame(width: 0.0)
                Text(resultMessage2)
                    .frame(width: 220,height:80,alignment: .leading)
                    .background(Color.cyan)
                    .foregroundColor(Color.black)
                    .bold()
            }
            
            Spacer()
                .frame(height: 1.0)


        } //end stack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
