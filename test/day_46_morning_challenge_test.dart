import 'package:test/test.dart';
import '../bin/main.dart';

void main() {
  test('Test Case 1', () {
//    expect(candy_distributor(7, 4), [1,2,3,1]);
//    expect(candy_distributor(10, 4), [1,2,3,4]);
//    expect(candy_distributor(12, 4), [3,2,3,4]);
//    expect(candy_distributor(16, 4), [3,5,4,4]);
  });

  test('Test Case balloons', () {
//    expect(balloon_pop([3,1,5,8], 1), 3);  //Takes a balloons list and
//    expect(balloon_pop([3,1,5,8], 2), 15); //pops at the position provided
//    expect(balloon_pop([3,1,5,8], 3), 40);

    expect(maximumAmountOfCoinsCollectable([3,1,5,8]), 167);
//    expect(maximumAmountOfCoinsCollectable([3,1,5,8]), 393);

//    3158, 167

  });
}
