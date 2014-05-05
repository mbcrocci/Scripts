#!/usr/bin/env python3

import unittest
import temp

class test_temp( unittest.TestCase):
    cel = 100.00
    fahr = 212.00
    kel = 373.15

    def test_celsius_fahr(self):
        self.assertEqual(temp.cel_to_fahr(self.cel), self.fahr)

    def test_celsius_kelvin(self):
        self.assertEqual(temp.cel_to_kel(self.cel), self.kel)

    def test_fahr_celsius(self):
        self.assertEqual(temp.fahr_to_cel(self.fahr), self.cel)

    def test_fahr_kelvin(self):
        self.assertEqual(temp.fahr_to_kel(self.fahr), self.kel)

    def test_kelvin_celsius(self):
        self.assertEqual(temp.kel_to_cel(self.kel), self.cel)

    def test_kelvin_fahr(self):
        self.assertEqual(temp.kel_to_fahr(self.kel), self.fahr)

if __name__ == "__main__":
    unittest.main()
