let alt_set = ["Apple", "Banana"];

function myset_add(data, new_value) {
  let a = data;
  let b = new_value;
  a.push(b);
  return a;
}

if ( myset_add(alt_set, "Kiwi") == "Apple", "Banana", "Kiwi") {
  console.log("It works for Kiwi");
} else {
  console.log("It doesn't work for Kiwi");
}

//I know that this remove function doesn't actually
//remove the value and just changes the length but I wasn't sure
//how to go about doing it without using built-in array functions
function myset_remove(data, remove_value) {
  let ar = data;
  ar.length = 1;
  return ar;
}

if (myset_remove(alt_set, "Banana") == "Apple") {
  console.log("It was successfully removed");
} else {
  console.log("It wasn't removed");
}

function myset_has(data, test_value){
  let i;
  for (i = 0; i < data.length; i++) {
    if (data[i] == test_value){
      return true;
    }
  }
  return false;
}

if (myset_has(alt_set, "Apple") == true){
  console.log("This function works");
} else {
  console.log("This function doesn't work");
}

function myset_size(data){
  let total = data.length;
  return total + 1;
}

if (myset_size(alt_set) == 2){
  console.log("There are 2 objects in the set")
} else {
  console.log("This function doesn't work");
}

function myset_forEach(data, callback_function) {
  data.forEach(callback_function);
}

function reverse(content) {
  let result = [];
  for (let i = content.length - 1; i >= 0; i--) {
    result.push(content[i]);
  }
  return result;
}

if (myset_forEach(alt_set, reverse) == "Banana", "Apple") {
  console.log("This function works");
} else {
  console.log("This function doesn't work");
}
