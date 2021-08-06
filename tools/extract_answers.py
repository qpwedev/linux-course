#!/usr/bin/env python3

"""
Extract answers from Markdown file where answers are marked with
**[A1]** Answer text. **[/A1]**.
"""

import argparse
import json
import re
import sys

# Answers look like this:
#   **[A1]** Answer text. **[/A1]**
ANSWER_RE = re.compile(
    r'[*][*]\[(?P<id>A[0-9]*)\][*][*](?P<text>.*)[*][*]\[/(\1)\][*][*]',
    re.DOTALL
)

# Answer consisting of dots only (e.g. '...') is considered empty.
EMPTY_ANSWER_RE = re.compile(r'^[.]*$')

def main():
    """
    Returns number of missing answers.
    """

    args = argparse.ArgumentParser(description='Answer extractor')
    args.add_argument(
        '--only',
        dest='only',
        metavar='ANSWER',
        help="Show only answer for this question (e.g. `A1').")
    config = args.parse_args()

    answers = {}
    empty_answers_count = 0
    inp = ''.join(sys.stdin.readlines())

    for match in ANSWER_RE.finditer(inp):
        answer_text = match.group('text').strip()
        answer_id = match.group('id')

        if EMPTY_ANSWER_RE.match(answer_text) is not None:
            answer_text = ''

        answers[answer_id] = answer_text

    if config.only:
        try:
            print(answers[config.only])
        except KeyError:
            pass
    else:
        print(json.dumps({
            'answers': answers
        }))

    return empty_answers_count

if __name__ == '__main__':
    sys.exit(main())
