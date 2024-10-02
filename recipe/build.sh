if [[ "$target_platform" == "linux-ppc64le" ]]; then
  CFLAGS="$(echo $CFLAGS | sed 's/-fno-plt //g')"
  CXXFLAGS="$(echo $CXXFLAGS | sed 's/-fno-plt //g')"
  LDFLAGS="$(echo $LDFLAGS | sed 's/-fno-plt //g')"
fi

./scripts/remove_test_files.sh
# ${PYTHON} setup.py install --prefix=${PREFIX}
${PYTHON} -m pip install . -vv --no-deps
