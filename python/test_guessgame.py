import unittest
import guessgame

class test_game(unittest.TestCase):

    def test_random_number(self):
        self.assertIn(guessgame.random_number(),range(1,101))

    def test_player_id(self):
        self.assertEqual(2,guessgame.player_id(4))
        self.assertEqual(1,guessgame.player_id(9))

    def test_get_guess(self):
        input_test_number = int(input("Enter a guess to evaluate: "))
        self.assertEqual(input_test_number,guessgame.get_guess(1))

    def test_evaluate(self):
        self.assertEqual("Higher than that",guessgame.evaluate(2, 34))
        self.assertEqual("Lower than that",guessgame.evaluate(34, 2))

if __name__ == "__main__":
    unittest.main()
