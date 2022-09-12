import sys
import os

path_to_use = os.path.join(os.path.dirname(__file__), '..')
sys.path.append(path_to_use)

import pytest
from sample.some_file import TheFirstClass


@pytest.mark.parametrize("input", ["aer", "brfef", "crtge"])
def test_string_contains(input):
    instance = TheFirstClass()
    assert instance.string_contains_some_letter(input)


@pytest.mark.parametrize("input", ["ert", "htr"])
def test_not_string_contains(input):
    instance = TheFirstClass()
    assert not instance.string_contains_some_letter(input)
