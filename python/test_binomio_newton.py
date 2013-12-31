import unittest
import binomio_newton

class test_binomio (unittest.TestCase):
    def test_factorial (self):
        self.assertEqual(24, binomio_newton.factorial(4))
        self.assertEqual(120, binomio_newton.factorial(5))
        self.assertEqual(720, binomio_newton.factorial(6))
        
    def test_combinacao(self):
        self.assertEqual(1, binomio_newton.combinacao(3,0))
        self.assertEqual(3, binomio_newton.combinacao(3,1))
        self.assertEqual(3, binomio_newton.combinacao(3,2))
        self.assertEqual(1, binomio_newton.combinacao(3,3))

        self.assertEqual(1, binomio_newton.combinacao(4,0))
        self.assertEqual(4, binomio_newton.combinacao(4,1))
        self.assertEqual(6, binomio_newton.combinacao(4,2))
        self.assertEqual(4, binomio_newton.combinacao(4,3))
        self.assertEqual(1, binomio_newton.combinacao(4,4))

    def test_binomio(self):
        self.assertEqual(216, binomio_newton.binomio(2,4,3))

if __name__ == '__main__':
    unittest.main()
