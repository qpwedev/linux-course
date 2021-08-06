#!/usr/bin/env python3

from setuptools import setup

setup(
    name='tapsum2json',
    version='1.0',
    install_requires=[
        'tap.py'
    ],
    include_package_data=True,
    scripts=[
        'tapsum2json'
    ]
)
