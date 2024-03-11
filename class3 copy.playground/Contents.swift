struct ChatView {
  //property
  var msg = "Hi"

  //method
  func sendChat(){
    print("sending...")
  }
  
}

//instance is piece of data that we wanna keep track of
var r:ChatView = ChatView()
r.sendChat()

//datatype of a struct is the name of the struct itself. instantiate by writing the name of struct then ()

r.msg = "Hello"
r.sendChat()

//can create multiple isntances
var b:ChatView = ChatView()
b.msg = "Bye"
b.sendChat()



