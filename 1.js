function pascal_function(n) {
    var arr = {};
    for(var i = 0; i < n; i++) {
        arr[i] = [];
        for(var j = 0; col < i+1; j++) {
            if(j === 0 || j === i) {
                arr[i][j] = 1;
            } else {
                arr[i][j] = arr[i-1][j-1] + arr[i-1][j];
            }         
        }       
    }   
    return arr;
}
console.log(pascal_function(5));