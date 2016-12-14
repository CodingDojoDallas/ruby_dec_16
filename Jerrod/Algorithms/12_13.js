//pg131
function minimalThreeArrayRange(arr1, arr2, arr3){
  //I worked under the assumption the three arrays were given to us in sorted order relating to their first(or zero) index, or in otherwords, arr1[0] < arr2[0] < arr3[0], it would be easy to sort them out like that anyways though
  var max = arr3[0]
  var min = arr1[0]
  var index //following my inital assumption, it's a guarantee that the first number from the thir and first array give us a working range. Guaranteed at least the first index of the second array is in this range, but this is probably not the shortest range so not the answer.

  //FIRST FOR LOOP- purpose of this to see if there is another number in the first array besides the zero index that can function as the min (give us a range that still has at least one index from the second array inside), so we can start to shorten our range. we start from the back of arr1 sinc the first thing that passes as the new min will be the smallest range we can get from a min inside arr1
  for(var i = arr1.length-1; i > 0; i--){
    if(arr1[i] < max){ //if not then we're swtiching the max and min, no good
      var temp = arr1[i] //possible new min, but have to make sure
      for(var x = 0; x < arr2.length; x++){// if even one of these passes then temp gives us a shorter and working range, so we change min and break out of both loops
        if(temp < arr2[x] < max){
          min = temp //change min
          index = i
          break
        }
      }// end of inner loop
      if(min == temp) //then we changed min so there's no point in trying to find another min inside arr1, we'll only make the range bigger
        break
    }//end of if
  }// end of for loop

  //SECOND LOOP: this loop checks if we can find an index from arr2 that can funciton as a better min(still contains at least one index from arr1 but a shorter range thatn the current one), this is the last thing we can do, due to my starting assumption, we can't change max, any smaller and arr3 is no longer included in the range, any bigger and the range just gets bigger. And it's not possible for one array to contain both min and max. This loop works just like the one above
  for(var i = arr2.length-1; i >= 0; i--){//we start from the back because this would give us a shorter range than one of the indexes closer to the front
    if(arr2[i] < max){
      var temp = arr2[i]
      for (var x = arr1.length -1; x >= index; x--){//we start looking at arr1 from the back only up to the index because any further only extends our range, we want to shorten it
        if(temp < arr1[x] && arr1[x] < max){ //my inital if statement was if(temp < arr1[x] < max) but for some reason this didn't work right, not sure why
          min = temp
          break
        }
      } // end of inner loop
      if( temp == min)
        return {min: min, max: max}
    }//end of if
  }//end of last loop
  return {min: min, max: max}
}

console.log(minimalThreeArrayRange([1,2,4,15], [3,10,12], [5,10,13,17,23]))//returns min:3, max:5
console.log(minimalThreeArrayRange([1,2,3], [10, 25, 30], [50, 60, 70]))//returns min:3, max:5
console.log(minimalThreeArrayRange([1,2,50,90], [3,40,120], [4,10,33,170,230]))//returns min:2, max:4
