import main

def test_add_numbers():
    assert main.add_numbers(2, 3) == 5
    assert main.add_numbers(-1, 1) == 0
    assert main.add_numbers(0, 0) == 0

if test_add_numbers() == 0:
    print("All tests passed!")