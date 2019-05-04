import friendly_traceback
import sys


def test_type_error1():
    try:
        a = 'a'
        one = 1
        result = a + one
    except Exception:
        friendly_traceback.explain(*sys.exc_info(), redirect="capture")
    result = friendly_traceback.get_output()
    assert "TypeError: can only concatenate str" in result
    return result


def test_type_error2():
    try:
        one = 1
        none = None
        result = one + none
    except Exception:
        friendly_traceback.explain(*sys.exc_info(), redirect="capture")
    result = friendly_traceback.get_output()
    assert "TypeError: unsupported operand type(s) for +:" in result
    return result


def test_type_error3():
    try:
        a = (1, 2)
        b = [3, 4]
        result = a - b
    except Exception:
        friendly_traceback.explain(*sys.exc_info(), redirect="capture")
    result = friendly_traceback.get_output()
    assert "TypeError: unsupported operand type(s) for -:" in result
    return result


def test_type_error4():
    try:
        a = 1j
        b = {2, 3}
        result = a * b
    except Exception:
        friendly_traceback.explain(*sys.exc_info(), redirect="capture")
    result = friendly_traceback.get_output()
    assert "TypeError: unsupported operand type(s) for *:" in result
    return result


def test_type_error5():
    try:
        a = {1: 1, 2: 2}
        b = 3.1416
        result = a / b
    except Exception:
        friendly_traceback.explain(*sys.exc_info(), redirect="capture")
    result = friendly_traceback.get_output()
    assert "TypeError: unsupported operand type(s) for /:" in result
    return result


if __name__ == "__main__":
    print(test_type_error1())
    print(test_type_error2())
    print(test_type_error3())
    print(test_type_error4())
