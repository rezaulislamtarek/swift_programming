final class TreeNode {
    let value : Int
    var left : TreeNode?
    var right : TreeNode?
    init(value : Int){
        self.value = value
    }
}

func insetValue(_ root : TreeNode?, _ value: Int) -> TreeNode {
    guard let root = root else {
        return TreeNode(value: value)
    }
    var current = root

    while true {
        if value < current.value {
            if let tmp = current.left {
                current = tmp
            }else{
                current.left = TreeNode(value: value)
                return current.left!
            }
             
        }else {
            if let tmp = current.right{
                current = tmp
            }else{
                current.right = TreeNode(value: value)
                return current.right!
            }
        }
    }
  
    return current
}

let rootTree = TreeNode(value: 10)
var res = insetValue(rootTree, 5)
res = insetValue(rootTree, 15)
res = insetValue(rootTree, 12)
res = insetValue(rootTree, 16)
print("Result \(res.value)")


//10, 5, 15, 12
/*
if value < current.value {
        current.left = TreeNode(value : value)
        current = current.left!
        
    }else{
        current.right = TreeNode(value: value)
        current = current.right!
    }
*/