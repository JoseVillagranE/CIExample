install:
	pip install --upgrade pip &&\
	pip install -r requeriments.txt

lint:
# Python static code analysis tool which looks for programming errors
# disable turn of Refactor and Convention messages
	pylint --disable=R, C main.py

test:
# -vv Verbose level 2. Unlock some information that hidden in level 1
#  cov generate a report of the run
	python -m pytest -vv --cov=sub test.py