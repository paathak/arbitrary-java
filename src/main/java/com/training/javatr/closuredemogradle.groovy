def hi(Closure c) {
    c()
}
javapath = ''
testpath = ''
def java(Closure c) {
    
    javapath = c()
}

def test(Closure c) {
    testpath = c()
}

def srcst(str) {
    return str
}

hi {
    java {
        srcst('main')
    }
    
    test {
        srcst('test')
    }
    
}

println javapath
println testpath
