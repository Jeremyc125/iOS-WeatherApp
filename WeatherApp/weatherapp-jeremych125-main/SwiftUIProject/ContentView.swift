//
//  ContentView.swift
//  SwiftUIProject
//
//  Created by user216422 on 3/29/22.
//

import SwiftUI

struct ContentView: View {
    
    
    
    var body: some View {
        ZStack{
            
            //gradual change in color
            LinearGradient(
                gradient: Gradient(colors: [.blue, .white]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            //overall vstack with an hstack for the weather of the week
            VStack(){
                Text("Bronx, NY")
                    .font(.system(size:32, weight: .bold, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: -45){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 200)
                    Text("76°")
                        .font(.system(size:60, weight: .bold, design: .default))
                        .foregroundColor(.white)
                }
                Spacer()
                //the styling and the individual days are put in a vstack in another function (weekly temp)
                HStack(spacing: 15){
                    weeklyTemp(daysname: "MON", daysweather: "cloud.sun.fill", daystemperature: 67)
                    weeklyTemp(daysname: "TUE", daysweather: "cloud.sun.fill", daystemperature: 74)
                    weeklyTemp(daysname: "WED", daysweather: "cloud.sun.fill", daystemperature: 78)
                    weeklyTemp(daysname: "THU", daysweather: "cloud.sun.fill", daystemperature: 60)
                    weeklyTemp(daysname: "FRI", daysweather: "cloud.sun.fill", daystemperature: 50)
                    weeklyTemp(daysname: "SAT", daysweather: "cloud.sun.fill", daystemperature: 26)
                    weeklyTemp(daysname: "SUN", daysweather: "cloud.sun.fill", daystemperature: 32)
                    
                }
                Spacer()
            }
        }
    }
    
    
}
//struct for each individual day of the week in a vstack
struct weeklyTemp: View{
    var daysname: String
    var daysweather: String
    var daystemperature: Int
    
    var body: some View{
        VStack{
            Text(daysname)
                .foregroundColor(.white)
                .font(.system(size: 20))
            Image(systemName: daysweather)
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(daystemperature)°")
                .foregroundColor(.white)
                .font(.system(size: 25))
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


