"""
invocation.py
---------------

Sets up the various options when Friendly-traceback is invoked from the
command line. You can find more details by doing::

    python -m friendly_traceback -h

"""
import argparse
import sys
import textwrap

from . import console
from . import core
from . import version


parser = argparse.ArgumentParser(
    formatter_class=argparse.RawDescriptionHelpFormatter,
    description=textwrap.dedent(
        """Friendly-traceback makes Python tracebacks easier to understand.

        Note: the values of the verbosity level described below are:
            0: Normal Python tracebacks
            1: Default - does not need to be specified
            2: Normal Python tracebacks appear before the friendly display
            9: Normal Python tracebacks appended at the end of the friendly
            display.

        Other values may be available, as we try to find the most useful
        settings for beginners.
        """
    ),
)
parser.add_argument(
    "source",
    nargs="?",
    help="""Name of the script to be run as though it was the main module
    run by Python, so that __name__ does equal '__main__'.
    """,
)

parser.add_argument(
    "--lang",
    help="""This sets the language used by Friendly-tracebacks.
            Usually this is a two-letter code such as 'fr' for French.
         """,
)

parser.add_argument(
    "--level",
    type=int,
    help="""This sets the "verbosity" level, that is the amount of information
            provided.
         """,
)

parser.add_argument(
    "--import_only",
    help="""Import the module instead of running it as a script.
         """,
    action="store_true",
)


parser.add_argument(
    "--version",
    help="""import the module instead of running it as a script.
         """,
    action="store_true",
)


def main():
    console_dict = {"set_lang": core.set_lang, "set_level": core.set_level}
    args = parser.parse_args()
    if args.lang is not None:
        core.set_lang(args.lang)
    if args.level is not None:
        core.set_level(args.level)
    if args.version:
        print(f"Friendly-tracebacks version {version.__version__}")

    if args.source is not None:
        if sys.flags.interactive:
            if args.import_only:
                module = __import__(args.source)
                module_dict = {}
                for var in dir(module):
                    module_dict[var] = getattr(module, var)
            else:
                module_dict = core.run_module(args.source)
            console_dict.update(module_dict)
            console.start_console(local_vars=console_dict)
        elif args.import_only:
            module = __import__(args.source)
        else:
            core.run_script(args.source)
    else:
        console.start_console()


main()
