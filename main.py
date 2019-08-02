#!/usr/local/bin/python3
import argparse

def parse_args():
    parser = argparse.ArgumentParser(description="A simple hello-world app")
    parser.add_argument("-n", "--name", type=str, help="The name to say hello to", default="world")
    return parser.parse_args()

if __name__ == "__main__":
    args = parse_args()
    print("Hello {0}!".format(args.name))