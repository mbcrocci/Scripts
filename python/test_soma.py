from soma import soma
import unittest

class test_soma (unittest.TestCase):
  def test_soma (self):
    self.assertEqual(soma(1,10), 55)
    self.assertEqual(soma(1,1000), 500500)


if __name__ == '__main__':
  unittest.main()
