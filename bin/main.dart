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

import 'dart:math';

import 'package:test/test.dart';

List<int> candy_distributor(int candies, int num_people) {
  List candies_given_away = List<int>.generate(num_people, (i) => i = 0);
  int offset = 0;
  while (candies > 0) {
    offset++;
    for (int j = 0; j < candies_given_away.length; j++) {
      if (candies > (j + offset)) {
        candies_given_away[j] = candies_given_away[j] + j + offset;
        candies = candies - (j + offset);
      }
      else {
        candies_given_away[j] = candies_given_away[j] + candies;
        candies = 0;
        return candies_given_away;
      }
    }
  }
}

// Challenge 2
// Burst Balloons
// Given n balloons, indexed from 0 to n-1. Each balloon is painted with a number
// on it represented by array nums. You are asked to burst all the balloons.
// If the you burst balloon i you will get nums[left] * nums[i] * nums[right] coins.
// Here left and right are adjacent indices of i. After the burst, the left and
// right then becomes adjacent.
//
//  Find the maximum coins you can collect by bursting the balloons wisely.

// Stage 1
// Write a function which calculates total coins earned by bursting a balloon at index 'i'

// Stage 2
// Implement the algorithm to calculate the maximum coins that can be earned.

int balloon_pop(List<int> balloons_list, int position) {
//  position = position - 1;
  int adjacent_right = 0;
  int adjacent_left = 0;
  int result;
//print(position);
  position - 1 == -1
      ? adjacent_left = 1
      : adjacent_left = balloons_list[position - 1];

  position + 1 == balloons_list.length
      ? adjacent_right = 1
      : adjacent_right = balloons_list[position + 1];

//  print('$adjacent_left + $adjacent_right + ${balloons_list[position]}');
  result = adjacent_left * adjacent_right * balloons_list[position];
  return result;
}

int maximumAmountOfCoinsCollectable (List <int> balloons){
  if( balloons.length == 1)return balloons.first;
  int maxCoins = 0;
  for(int i =0; i < balloons.length; i++){
    var copy = List.from(balloons);
    var coinsFromI = balloon_pop(copy, i);
    copy.removeAt(i);
    coinsFromI = coinsFromI + maximumAmountOfCoinsCollectable(copy);
    if(maxCoins < coinsFromI) maxCoins = coinsFromI;
  }return maxCoins;}

void main() {
//  print(candy_distributor(7, 4));
//  print(candy_distributor(10, 4));
//  print(balloon_pop([3, 5, 7], 1));
//print(balloon_max_value([3,5,7,1,9]));
//print(maximumAmountOfCoinsCollectable([3,5,7,1,9]));
print(maximumAmountOfCoinsCollectable([3,1,5,8]));
}
