import unittest
from solution import fibonacci  # Import the solution file

class TestFibonacci(unittest.TestCase):
    def test_fibonacci(self):
        self.assertEqual(fibonacci(0), 0)
        self.assertEqual(fibonacci(1), 1)
        self.assertEqual(fibonacci(2), 1)
        self.assertEqual(fibonacci(3), 2)
        self.assertEqual(fibonacci(10), 55)
        self.assertEqual(fibonacci(15), 610)

if __name__ == '__main__':
    unittest.main()