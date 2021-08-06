#!/usr/bin/env python3

from setuptools import setup

setup(
    name='templater',
    version='1.0',
    install_requires=[
        'roman',
        'PyYAML',
        'jinja2',
        'argparse',
    ],
    include_package_data=True,
    scripts=[
        'templater'
    ]
)
