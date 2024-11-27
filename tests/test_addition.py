import pytest
from addition import add_numbers

def test_add_numbers():
    assert add_numbers(2, 3) == 5
    print("Test 1 passed")
    assert add_numbers(-1, 1) == 0
    print("Test 2 passed")
    assert add_numbers(0, 0) == 2
    print("Test 3 passed")
