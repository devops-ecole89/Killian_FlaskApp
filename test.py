# test_app.py
import pytest
from main import add_numbers

def test_add_numbers():
    assert add_numbers(2, 3) == 5
    assert add_numbers(-1, 1) == 0
    assert add_numbers(0, 0) == 0

if test_add_numbers() == 0:
    print("All tests passed!")