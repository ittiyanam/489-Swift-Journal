let a = false
let b = false
let c = true
if a {
    print("wow thats so true")
}
else if !a || !b && c{ //and has precedence over or
    print("a or b are false")
}
else {
    print("not trueeeeeeee")
}

