# don't run the tests for Python 3.10 (pyscf not working)
ver=$(python -c 'import sys; print(sys.version_info.minor)')
if [ $ver -gt 10 ]; then
    exit 0
fi
# install pyscf
pip install pyscf
python -c "import pyscf"
# run adcc smoke tests
pytest --pyargs adcc -v
