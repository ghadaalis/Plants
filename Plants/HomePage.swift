//
//  ContentView.swift
//  Plants
//
//  Created by Ghada Alshabanat on 17/04/1446 AH.
//

import SwiftUI

struct HomePage: View {
    @State  var showSheet = false// للتحكم في اظهار ال(sheet)
    var body: some View {
        
        NavigationStack {
            VStack {//VStack to organizes elements from top to bottom.
                //1-line
                Divider()
                    .background(Color.gray)
                    .padding(.top,15)
                //طريقه ثانيه ارسم خط يدوي عن طريق
                /*
                 Rectangle()
                 .frame(height: 0.6)
                 .padding(.top,15)
                 */
                Spacer()
                
                //2- image
                ZStack{
                    Image("backpic")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 219,height: 227)
                    Image("plantlog")//Add image from Assets
                        .resizable()//The image can be resized to fit the specified frame or container dimensions.
                        .scaledToFit()// // Scales the image to fit while maintaining aspect ratio
                        .frame(width: 164,height: 200)// Defines the new size for the image
                }
                Spacer()
                //3-Text#1
                Text("Start your plant journey! ")
                    .fontWeight(.semibold)//Applies semi-bold weight to the text
                    .foregroundColor(Color("H2"))//Add color from Assets
                    .font(Font.custom("SF Pro", size: 25))//Applies the custom font "SF Pro"
                    .multilineTextAlignment(.center)//Aligns the text in the center
                
                //4-Text#2
                
                Text("Now all your plants will be in one place and we will help you take care of them :)🪴 ")
                    .fontWeight(.regular)//Applies semi-bold weight to the text
                    .foregroundColor(Color("H3"))//Add color from Assets
                    .font(Font.custom("SF Pro", size: 16))//Applies the custom font "SF Pro"
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,20)
                    .padding()//Aligns the text in the center
                
                
                //5-Button
                
                Button(action: {
                   // showSheet=true
                    showSheet.toggle()  // تفعيل الـ sheet عند الضغط على الزر
                })
                {
                    Text("Set Plant Reminder")
                        .font(.system(size: 14))
                        .bold()
                        .foregroundColor(Color("H4"))
                        .frame(width: 280,height: 40)
                        .background(Color("Button"))
                        .cornerRadius(10)
                }
                Spacer()
                Spacer()
                
                
            }
            .navigationTitle("My Plants 🌱")
            .sheet(isPresented: $showSheet) {
                Set_Reminder(showSheet: $showSheet)
            }
                
        
            
        }
    }
}

#Preview {
    HomePage()
       .preferredColorScheme(.dark)
}

