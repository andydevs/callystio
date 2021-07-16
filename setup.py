"""
Jupyter notebook site generator

Author:  Anshul Kharbanda
Created: 10 - 18 - 2020
"""
from setuptools import setup

# Read README.md
with open('README.md', 'r') as f:
    readme = f.read()

# Setup function
setup(
    name='callystio',
    version='1.0.0',
    description='Jupyter notebook site generator',
    long_description=readme,
    long_description_content_type='text/markdown',
    url='https://github.com/andydevs/callystio',
    author='Anshul Kharbanda',
    author_email='akanshul97@gmail.com',
    license='MIT',
    classifiers = [
        "License :: OSI Approved :: MIT License",
        "Programming Language :: Python :: 3"
    ],
    packages=[
        'callystio',
        'callystio.builders',
        'callystio.loaders'],
    install_requires=[
        'notebook ~= 6.1',
        'jinja2 ~= 2.11',
        'markdown ~= 3.3',
        'click ~= 7.1',
        'coloredlogs ~= 15.0'
    ],
    entry_points={
        'console_scripts': [
            'callystio=callystio.cli:cli'
        ]
    },
    include_package_data=True
)