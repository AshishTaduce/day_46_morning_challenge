// Distribute Candies to People
// We distribute some number of candies, to a row of n = num_people people in the following way:
//
// We then give 1 candy to the first person, 2 candies to the second person,
// and so on until we give n candies to the last person.
//
// Then, we go back to the start of the row, giving n + 1 candies to the first
// person, n + 2 candies to the second person, and so on until we give 2 * n candies to the last person.
//
//This process repeats (with us giving one more candy each time, and moving to
// the start of the row after we reach the end) until we run out of candies.
// The last person will receive all of our remaining candies (not necessarily one more than the previous gift).
//
//  Return an list (of length num_people and sum candies) that represents the
// final distribution of candies.
// Example
// Input: candies = 7, num_people = 4
//  Output: [1,2,3,1]

List<int> candy_distributor (int candies, int num_people){
  List candies_given_away = List<int>.generate(num_people, (i) => i = 0);
  int offset = 0;
//  while (candies > 0) {
//    offset = offset + 1;
//    for (int j = 0; j < candies_given_away.length; j++){
//    //    int people = candies_given_away[j];
//      if (candies>0){
//          candies_given_away[j] = candies_given_away[j] + offset;
//          candies = candies - offset;
//      }
//      else{
//        return candies_given_away;
//      }
//    }
//  }
  while(candies < 0){

  }
  return candies_given_away;
}

main() {
  print(candy_distributor(7, 4));
}
