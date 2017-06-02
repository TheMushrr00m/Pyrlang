PY=python3

.PHONY: test run
run: build
	$(PY) test1.py

.PHONY: build
build:
	$(PY) setup.py build

test:
	$(PY) test/dist_etf_decode_test.py && \
	$(PY) test/dist_etf_transitive_test.py
