"""Script description"""
__author__ = "David Parker"

import argparse
import traceback
import sys

def get_cli_args():
    """Parse command line arguments"""
    try:
        parser = argparse.ArgumentParser(description="""Script description""")
        parser.add_argument("-f", "--foo", help="Help")
    except:
        print("An exception occurred with argument parsing. Check your provided options.")
        traceback.print_exc()
    return parser.parse_args()


def main():
    args = get_cli_args()
    

if __name__ == '__main__':
    main()