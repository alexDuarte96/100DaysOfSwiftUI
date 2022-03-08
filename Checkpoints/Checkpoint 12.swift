import Cocoa

// Rotate an Image

var matrix1 = [[1,2,3],[4,5,6],[7,8,9]]
// Result:    [[7,4,1],[8,5,2],[9,6,3]]

var matrix2 = [[5,1,9,11],[2,4,8,10],[13,3,6,7],[15,14,12,16]]
// Result:    [[15,13,2,5],[14,3,4,1],[12,6,8,9],[16,7,10,11]]

func rotate(_ matrix: inout [[Int]]) {
    let size = matrix.count

    // Rotate and add the values.
    for row in 0..<size {
        for column in 0..<size {
            matrix[column].insert(matrix[row][column], at: matrix[column].endIndex-row)
            //print(matrix[column])
        }
        //print()
    }
    
    // Remove the old values.
    for row in 0..<size {
        matrix[row].removeFirst(size)
    }
}

rotate(&matrix1)
print(matrix1)
rotate(&matrix2)
print(matrix2)
