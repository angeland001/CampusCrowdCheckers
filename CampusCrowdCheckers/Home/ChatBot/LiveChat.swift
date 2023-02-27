import SwiftUI

struct LiveChat: View {
    @State private var messageText = ""
    @State var messages: [String] = ["My name is Jenni, how can I help you?"]
    @State private var change = false
    var body: some View {
        
        VStack {
            ZStack {
                
                Wave(yOffset: 0.75)
                    .fill(Color.white)
                    //.fill(Color.theme.text)
                    .frame(height: 150)
                    .shadow(radius: 4)
                    .ignoresSafeArea()
                HStack{
                    Text("Jenni")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color.black)
                        
            
                    Image(systemName: "person.fill")
                        .font(.system(size: 26))
                        .foregroundColor(Color.black)
                        
                    
                }
                .offset(y:-40)
                
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
                                .background(Color(UIColor.secondarySystemBackground))
                                //.background(.black.opacity(0.2))
                                .cornerRadius(10)
                                .padding(.horizontal, 16)
                                .padding(.bottom, 10)
                            
                            Spacer()
        
                        }
                        
                    }
                }.rotationEffect(.degrees(180))
            }.rotationEffect(.degrees(180))
                .background(Color("Jenni"))
        
            HStack{
                TextField("Type something here", text: $messageText)
                    .padding()
                    .background(Color(UIColor.secondarySystemBackground))
        
                    .cornerRadius(10)
                    .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black, lineWidth: 1)
                            )
                    .onSubmit {
                        //send message
                        sendMessage(message: messageText)
                    }
                Button{
                    //send message
                    sendMessage(message: messageText)
                }label: {
                    Image(systemName: "paperplane.fill")
                        //.foregroundColor(Color.white)
                        .foregroundColor(Color("Airplane"))
                }
                .font(.system(size: 26))
                .padding(.horizontal, 10)
            }
            .padding()
        }
        .background(Color("Jenni"))
        
        
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
