//
//  ContentView.swift
//  medicalApp_SwiftUI
//
//  Created by rutik maraskolhe on 31/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.975846827, green: 0.8125091791, blue: 0.8340031505, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            VStack {
                //MARK:TOP
                TOP()
                //MARK: CALENDAR
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 15){
                        Calendar(number: "9", days: "tue", color: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), textcolor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
                        Calendar(number: "10", days: "Wed", color: #colorLiteral(red: 0.9060331583, green: 0.2547450066, blue: 0.3359550834, alpha: 1), textcolor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
                        Calendar(number: "11", days: "Thu", color: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), textcolor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
                        Calendar(number: "12", days: "Fri", color: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), textcolor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
                        Calendar(number: "13", days: "Sat", color: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), textcolor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
                        Calendar(number: "14", days: "Sun", color: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), textcolor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
                        
                    }
                    .padding(.leading,30)
                    .padding(.bottom, 30)
                }
                Spacer()
                //MARK: BLOK BOTTOM
                VStack{
                    ScrollView(.vertical,showsIndicators: false){
                        VStack(alignment: .leading){
                            Text("Today activities")
                                .font(.system(size: 24, weight: .bold, design: .rounded))
                            //MARK: LISINOPRIL
                            Alert()
                            //MARK: GABAPENTIN
                            GABAPENTIN()
                        }
                    }
                    //MARK: TABS MENU
                    TABSMENU()
                }
                .padding(30)
                .background(Color(#colorLiteral(red: 0.959171875, green: 0.959171875, blue: 0.959171875, alpha: 1)))
                .cornerRadius(20)
                .edgesIgnoringSafeArea(.bottom)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TOP: View {
    var body: some View{
        HStack(alignment: .top){
            Text("Your drug cabinet")
                .font(.system(size: 36,weight: .bold,design: .default))
                .frame(width: 200)
            
            Spacer()
            
            ZStack{
                
                Image(systemName: "bell.fill")
                    .resizable()
                    .frame(width:25,height: 28)
                    .padding()
                
                Circle()
                    .fill(Color.red)
                    .frame(width: 12,height: 12)
                    .padding(.leading,10)
            }
            
        }
        .padding(.horizontal)
        .padding([.top,.bottom])
    }
}

struct Calendar: View {
    var number : String
    var days : String
    var color : UIColor
    var textcolor : UIColor
    
    var body: some View {
        VStack{
            Text(self.number)
                .font(.system(size: 28, weight: .bold, design: .rounded))
                .foregroundColor(Color(self.textcolor))
            Text(self.days)
                .font(.headline)
                .foregroundColor(Color(self.textcolor))
        }.padding([.top,.bottom], 35)
            .padding([.leading,.trailing],20)
            .background(Color(self.color))
            .cornerRadius(40)
    }
}
    
struct TABSMENU: View {
    var body: some View {
        HStack(spacing: 60){
            Button(action: {}){
                Image(systemName: "heart")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
            Button(action: {}){
                Image(systemName: "smiley.fill")
                    .resizable().frame(width: 30, height: 30)
                    .foregroundColor(Color(#colorLiteral(red: 0.9060331583, green: 0.2547450066, blue: 0.3359550834, alpha: 1)))
            }
            Button(action: {}){
                Image(systemName: "calendar")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
            Button(action: {}){
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
        }
        .foregroundColor(Color.secondary)
    }
}





struct Alert: View {
    var body: some View {
        VStack{
            HStack(alignment: .top){
                Image("drug1")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding(.trailing,10)
                VStack(alignment: .leading){
                    Text("Paracetamol")
                        .font(.system(size: 22, weight: .bold, design: .rounded))
                    Text("150mg, 1 capsule")
                        .font(.system(size: 18, design: .rounded))
                        .padding(.bottom, 20)
                    Text("After breakfast")
                        .font(.system(size: 16, design: .rounded))
                }
                Spacer()
                
                Image(systemName: "list.dash")
            }
            
            Rectangle()
                .fill(Color.white)
                .frame(height: 2)
                .padding(.vertical)
            
            HStack{
                Spacer()
                Button(action: {}){
                    HStack{
                        Image(systemName: "xmark")
                        Text("Skip")
                    }
                }
                
                Spacer()
                
                Button(action: {}){
                    HStack{
                        Image(systemName: "checkmark")
                        Text("Done")
                    }
                }
                
                Spacer()
            }
            
        }
        .padding(30)
        .background(Color(#colorLiteral(red: 0.2793821692, green: 0.287648201, blue: 0.6285293698, alpha: 1)))
        .foregroundColor(Color.white)
        .cornerRadius(20).padding(.bottom)
    }
}
struct GABAPENTIN: View {
    var body: some View {
        HStack{
            Image("drug2")
                .resizable()
                .frame(width: 60, height: 60)
                .padding(.trailing,10)
            VStack(alignment: .leading){
                Text("benzonatate")
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                Text("25mg, 2 pills")
                    .font(.system(size: 18, design: .rounded))
            }
            
            Spacer()
            
            Image(systemName: "list.dash")
        }
        .padding(30)
        .background(Color(#colorLiteral(red: 0.9999201894, green: 1, blue: 0.9998924136, alpha: 1)))
        .cornerRadius(20)
    }
}
