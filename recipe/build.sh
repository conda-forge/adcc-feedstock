# nm $PREFIX/lib/libtensorlight$SHLIB_EXT | grep product_table_container | grep get_instance
# nm $PREFIX/lib/libtensorlight$SHLIB_EXT | grep product_table_container | grep ret_table

CXXFLAGS="$(echo $CXXFLAGS | sed 's/-fvisibility-inlines-hidden //g')"

./scripts/remove_test_files.sh
# ${PYTHON} setup.py install --prefix=${PREFIX}
${PYTHON} -m pip install . -vv --no-deps
