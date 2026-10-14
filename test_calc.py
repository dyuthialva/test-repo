from calc import average


def test_average():
    assert average([2, 4, 6]) == 4


def test_average_single():
    assert average([5]) == 5
