ArrayList<ArrayList<Integer>> sets;
int numSets = 3;

void setup() {
  size(640, 360);
  
  sets = new ArrayList<ArrayList<Integer>>();
  
  for (int i = 0; i < numSets; i++) {
    ArrayList<Integer> set = new ArrayList<Integer>();
    sets.add(set);
  }
  
  int sum = 242;
  
  for (int i = 0; i <= sum; i++) {
    String ter = ternary(i, 5);
    
    if (ter.charAt(4) == '0') {
      sets.get(0).add(i);
    }
    
    if (ter.charAt(4) == '1') {
      sets.get(1).add(i);
    }
    
    if (ter.charAt(4) == '2') {
      sets.get(2).add(i);
    }
  }
  
  background(0, 0, 138);
    
  int j = 0;
  for (int x = 24; j < 9; x += 30) { 
    int i = 0;
    for (int y = 12; i < 9; y += 16)  {
      fill(0, 0, 255);
      textAlign(RIGHT, TOP);
      text(sets.get(0).get(i+j*9), x, y);
      i++;
    }
    j++;
  }
  
  j = 0;
  for (int x = 388; j < 9; x += 30) { 
    int i = 0;
    for (int y = 12; i < 9; y += 16)  {
      fill(255, 0, 0);
      textAlign(RIGHT, TOP);
      text(sets.get(1).get(i+j*9), x, y);
      i++;
    }
    j++;
  }
  
  j = 0;
  for (int x = 216; j < 9; x += 30) { 
    int i = 0;
    for (int y = 200; i < 9; y += 16)  {
      fill(0, 255, 0);
      textAlign(RIGHT, TOP);
      text(sets.get(2).get(i+j*9), x, y);
      i++;
    }
    j++;
  }
}

void draw() {
  
}

String ternary(int number, int places) {
  String output = "";
  for (int i = 0; i < places; i++) {
    output += "0";
  }
  String answer = Integer.toString(Integer.parseInt(number + "", 10), 3);
  output += answer;
  output = output.substring(output.length() - places, output.length());
  return output;
}
int sum(int[] arr) {
  int sum = 0;
  
  for (int i = 0; i < arr.length; i++) { 
    sum += arr[i];
  }
  
  return sum;
}

boolean contains(int[] arr, int val) {
  boolean contains = false;
  
  for (int i = 0; i < arr.length; i++) { 
    if (arr[i] == val) {
      contains = true;
      break;
    }
  }
  
  return contains;
}
