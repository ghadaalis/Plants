//
//  Set Reminder.swift
//  Plants
//
//  Created by Ghada Alshabanat on 20/04/1446 AH.
//

import SwiftUI

struct Set_Reminder: View {
    @Environment(\.dismiss)var dismiss
    @Binding var showSheet:Bool
    @State var plantName:String=""
    @State var RoomOptions=["Bedroom","Living Room","Kitchen","Balcony","Bathroom"]
    @State var Room:String="Bedroom"
    @State var LightOptions=["Full Sun","Partial Sun","Low Light"]
    @State var Light:String="Full Sun"
    @State var WateringDaysOptions=["Every day","Every 2 days","Every 3 days","Once a week","Every 10 days","Every 2 weeks"]
    @State var WateringDays:String="Every day"
    @State var WaterOptions=["20-50 ml","50-100 ml","100-200 ml","200-300 ml"]
    @State var Water:String="20-50 ml"
    

    var body: some View {

        NavigationStack {
           
            Form {
                //Section#1
                Section{
                  HStack{
                        Text("Plant Name")
                        TextField("Pothos", text: $plantName)
                        }
                    }
                //Section#2
                Section{
                   
                        HStack{
                        Image(systemName: "location")
                        Picker("Room", selection: $Room)
                        {
                            ForEach(RoomOptions,id:\.self)
                            {
                                Text($0)
                            }
                            
                        }
                        //.pickerStyle(MenuPickerStyle()) يطلع لونه ازرق
                        }
                        HStack{
                        Image(systemName: "sun.max")
                        Picker("Light", selection: $Light)
                        {
                            ForEach(LightOptions,id:\.self)
                            {
                                Text($0)
                            }
                        }
                        }
              
                    }
                //Section#3
                Section{
                   
                        HStack{
                        Image(systemName: "drop")
                        Picker("Watering Days", selection: $WateringDays)
                        {
                            ForEach(WateringDaysOptions,id:\.self)
                            {
                                Text($0)
                            }
                            
                        }
                      
                        }
                        HStack{
                        Image(systemName: "drop")
                        Picker("Water", selection: $Water)
                        {
                            ForEach(WaterOptions,id:\.self)
                            {
                                Text($0)
                            }
                        }
                        }
             
                    }
              
                    
               
            }
          
                VStack{
                    
                    
                    
                      }
                
                .navigationTitle("Set Reminder")
                .navigationBarTitleDisplayMode(.inline)
            //Button
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {//left
                        
                        Button("Cancel") {
                            //dismiss()
                            showSheet=false
                                          }
                        .foregroundColor(Color("Green"))
                    }
                    
                    ToolbarItem(placement: .topBarTrailing) {// Right
                        Button("Save") {
                       //                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                                               }
                        .foregroundColor(Color("Green"))
                    }
                }
            // End of tool bar
             
                }
            
            
            
        }
    
   
}

#Preview {
    Set_Reminder(showSheet:.constant(false))
        .preferredColorScheme(.dark)
}
