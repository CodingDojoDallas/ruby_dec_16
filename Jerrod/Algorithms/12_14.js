function realJobAlgorithm(arr){
  var ans = [], temp = []
  for(var i = 0; i < arr.length; i++){
    temp = []
    temp.push(arr[i])
    for(var x = i; x< arr.length; x++){
      if(arr[x] > temp[temp.length -1])
        temp.push(arr[x])
    }
    if(temp.length >ans.length)
      ans = temp
  }
  return ans
}
console.log(realJobAlgorithm([1,2,5,4,3,7,11,9,0])) //answer is [1, 2, 5, 7, 11]

//this works for the simple solution (not skipping any numbers), we didn't finish it being able to skip any number and create who knows how many subsets
