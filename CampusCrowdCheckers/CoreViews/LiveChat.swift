//
//  LiveChat.swift
//  CampusCrowdCheckers
//
//  Created by Andrew on 11/16/22.
//

import SwiftUI

struct LiveChat: View {
    @State private var messageText = ""
        @State var messages: [String] = ["Welcome to Campus Crowd Check 1.0!"]
        var body: some View {
            VStack {
                HStack{
                    Text("FAQ")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color.white)
                    
                    Image(systemName: "person.fill")
                        .font(.system(size: 26))
                        .foregroundColor(Color.white)
                }
                
                ScrollView{
                    //Messages
                    ForEach(messages, id: \.self) { message in
                        if message.contains("[USER]"){
                            let newMessage = message.replacingOccurrences(of: "[USER]", with: "")
                            
                            HStack{
                                Spacer()
                                Text(newMessage)
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(.blue.opacity(0.8))
                                    .cornerRadius(10)
                                    .padding(.horizontal, 16)
                                    .padding(.bottom, 10)
                            }
                        }else{
                            HStack{
                                Text(message)
                                    .padding()
                                    .background(.white)
                                    .cornerRadius(10)
                                    .padding(.horizontal, 16)
                                    .padding(.bottom, 10)
                                Spacer()

                            }
                        }
                    }.rotationEffect(.degrees(180))
                }.rotationEffect(.degrees(180))
                    .background(Color.black)
                
                HStack{
                    TextField("Type Something", text: $messageText)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .onSubmit {
                            //send message
                            sendMessage(message: messageText)
                        }
                    Button{
                        //send message
                        sendMessage(message: messageText)
                    }label: {
                        Image(systemName: "paperplane.fill")
                            .foregroundColor(Color.blue)
                    }
                    .font(.system(size: 26))
                    .padding(.horizontal, 10)
                }
                .padding()
            }
            .background(Color.theme.background)
            
            
        }
        
        
        func sendMessage(message: String){
            withAnimation{
                messages.append("[USER]" + message)
                self.messageText = ""
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 1){
                withAnimation {
                    messages.append(getBotRespone(message: message))
                }
            }
            
            
            
        }
}

    


struct LiveChat_Previews: PreviewProvider {
    static var previews: some View {
        LiveChat()
    }
}
