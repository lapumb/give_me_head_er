# """give_me_header.py

# TODO: give a description

# Usage:
#     give_me_header.py 
#     give_me_header.py (-h | --help)
# """

from typing import Any
from docopt import docopt

def main(args: dict[str, Any]) -> None:
    assert(args)

if __name__ == '__main__':
    # args: dict[str, Any] = docopt(__doc__)
    # main(args)
    print("Hello, shitty world.")
