print("Enter your name and age(seperated by space): - ")
if let input = readLine() {
   let params = input.split(separator: " ")
   if let age = Int(params[1]){
    let name = String(params[0])
    print("Name: \(name)\nAge: \(age)")
   }else{
    print("Invalid name or age")
   }
}else{
    print("Invalid input")
}
