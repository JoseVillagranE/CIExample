install:
	pip install --upgrade pip &&\
	pip install -r requirements.txt

lint:
# Python static code analysis tool which looks for programming errors
# disable turn of Refactor and Convention messages
	pylint --disable=R, C main.py

test:
# -vv Verbose level 2. Unlock some information that hidden in level 1
#  cov generate a report of the run
	python3 -m pytest -vv test.py
