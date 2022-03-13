import Cocoa

class Node{
    var value:Int
    var left:Node? = nil
    var right:Node? = nil
    
    init(_ value:Int){
        self.value = value
    }
}

func depthSearch(node:Node){
    print(node.value, terminator: " ")
    
    if node.left != nil {
        depthSearch(node: node.left!)
    }
    
    if node.right != nil {
        depthSearch(node: node.right!)
    }
}

func breadthSearch(node:Node){
    var nodes = [node]
    
    while !nodes.isEmpty {
        let current:Node = nodes.popLast()!
        print(current.value, terminator: " ")
        
        if current.left != nil {
            nodes.insert(current.left!, at: 0)
        }
        
        if current.right != nil {
            nodes.insert(current.right!, at: 0)
        }
    }
}

func treeIncludes(value:Int, node:Node) -> Bool{
    var leftFound:Bool
    var rightFound:Bool
    
    if node.value == value{
        return true
    }
    
    if node.left != nil {
        leftFound = treeIncludes(value: value, node: node.left!)
    }else{
        leftFound = false
    }
    
    if node.right != nil{
        rightFound = treeIncludes(value: value, node: node.right!)
    }else{
        rightFound = false
    }
    
    return leftFound || rightFound
}

let root = Node(1)
root.left = Node(2)
root.right = Node(3)

root.left?.left = Node(4)
root.left?.right = Node(5)
root.right?.left = Node(6)

root.left?.left?.left = Node(7)

print("Depth Search:")
depthSearch(node: root)

print("\nBreadth Search:")
breadthSearch(node: root)

print(treeIncludes(value: 100, node: root))
