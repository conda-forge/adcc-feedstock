# nm $PREFIX/lib/libtensorlight$SHLIB_EXT | grep product_table_container | grep get_instance
# nm $PREFIX/lib/libtensorlight$SHLIB_EXT | grep product_table_container | grep ret_table

CXXFLAGS="$(echo $CXXFLAGS | sed 's/-fvisibility-inlines-hidden //g')"

if [[ "$PY_VER" == "3.15" ]]; then
  # avoid treating newer defs in py315 as errors: _POSIX_C_SOURCE 202405L _XOPEN_SOURCE 800
  CXXFLAGS="${CXXFLAGS} -Wno-error=cpp -Wno-error=macro-redefined"
fi

./scripts/remove_test_files.sh
# ${PYTHON} setup.py install --prefix=${PREFIX}
${PYTHON} -m pip install . -vv --no-deps
