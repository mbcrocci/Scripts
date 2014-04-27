try:
	from setuptools import setup
except ImportError:
	from distutils.core import setup

config = [
	'description': 'My Project',
	'author': 'Maurizio Crocci',
	'url': 'http://github.com/punkcat/Scipts',
	'author email': 'punkzioc@gmail.com'
	'version': '0.1',
	'install requires': ['nose'],
	'packages': ['NAME'],
	'scripts': [],
	'name': 'projectname'
]

setup(**config)