import sys

import friendly_traceback

friendly_traceback.set_lang("en")

# Format of the dict below
# filename : "partial content of the Friendly traceback information"

causes = {
    "raise_indentation_error1": "expected to begin a new indented block",
    "raise_indentation_error2": "does not match the indentation of the previous line",
    "raise_indentation_error3": "not aligned vertically with another block of code",
    "raise_tab_error": "A TabError indicates that you have used",
    "raise_syntax_error1": "assign a value to the Python keyword 'def'",
    "raise_syntax_error2": "'if' but forgot to add a colon ':'",
    "raise_syntax_error3": "wrote a 'while' loop but",
    "raise_syntax_error4": "wrote 'else if' instead",
    "raise_syntax_error5": "wrote 'elseif' instead",
    "raise_syntax_error6": "tried to define a function or method",
    "raise_syntax_error7": "tried to define a function or method",
    "raise_syntax_error8": "tried to define a function or method",
    "raise_syntax_error9": "what Python calls a 'literal'",
    "raise_syntax_error10": "what Python calls a 'literal'",
    "raise_syntax_error11": "from turtle import pen",
    "raise_syntax_error12": "EOL while scanning string literal",
    "raise_syntax_error13": "None is a constant in Python",
    "raise_syntax_error14": "__debug__ is a constant in Python",
    "raise_syntax_error15": "The closing parenthesis ')' on",
    "raise_syntax_error16": "The opening parenthesis '(' on line",
    "raise_syntax_error17": "The opening parenthesis '(' on line",
    "raise_syntax_error18": "The closing square bracket ']' on line",
    "raise_syntax_error19": "The closing square bracket ']' on line",
    "raise_syntax_error20": "In older version of Python, 'print' was a keyword",
    "raise_syntax_error21": "You tried to use the Python keyword",
    "raise_syntax_error22": "The Python keyword 'break' can only be used",
    "raise_syntax_error23": "The Python keyword 'continue' can only be used",
    "raise_syntax_error24": "quote inside a string",
    "raise_syntax_error25": "forgot a comma",
    "raise_syntax_error26": "forgot a comma",
    "raise_syntax_error27": "forgot a comma",
    "raise_syntax_error28": "forgot a comma",
    "raise_syntax_error29": "forgot a comma",
    "raise_syntax_error30": "function call and is not simply the name of a variable",
    "raise_syntax_error31": "function call and not the name of a variable",
    "raise_syntax_error32": "used an equal sign '=' instead of a colon ':'",
    "raise_syntax_error33": "define functions with only positional arguments",
    "raise_syntax_error34": "call functions with only positional arguments",
    "raise_syntax_error35": "a string prefixed by the letter f,",
    "raise_syntax_error36": "The opening square bracket '['",
    "raise_syntax_error37": "The opening square bracket '['",
    "raise_syntax_error38": "is a variable defined outside a function.",
    "raise_syntax_error39": "keyword pass as an attribute",
    "raise_syntax_error40": "using the continuation character",
    "raise_syntax_error41": "where 'invalid' is not a valid variable name in Python",
    "raise_syntax_error42": "as part of a variable name in Python",
    "raise_syntax_error43": "as an argument in the definition of a function",
    "raise_syntax_error44": "as an argument in the definition of a function",
    "raise_syntax_error45": "as an argument in the definition of a function",
    "raise_syntax_error46": "as an argument in the definition of a function",
    "raise_syntax_error47": "instead of deleting the function's name",
}

if sys.version_info < (3, 8):
    causes["raise_syntax_error_walrus"] = "walrus operator"


def test_syntax_errors():
    count = 0
    for filename in causes:
        cause = causes[filename]
        try:
            try:
                exec("from . import %s" % filename)  # for pytest
            except ImportError:
                exec("import %s" % filename)
        except Exception:
            friendly_traceback.explain(redirect="capture")
        result = friendly_traceback.get_output()

        if "syntax" in filename:
            assert "SyntaxError" in result, (
                "SyntaxError identified incorrectly; %s" % filename
            )
        elif "indentation" in filename:
            assert "IndentationError" in result, (
                "IndentationError identified incorrectly; %s" % filename
            )
        else:
            assert "TabError" in result, (
                "TabError identified incorrectly; %s" % filename
            )
        assert cause in result, "\nExpected: %s\nGot: %s" % (cause, result)
        count += 1
    return count


if __name__ == "__main__":
    print("%s tests run successfully" % test_syntax_errors())
