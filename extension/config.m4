PHP_ARG_ENABLE(wasm, whether to enable wasm support,
[  --enable-wasm          Enable wasm support], no)

if test "$PHP_WASM" != "no"; then
  AC_DEFINE(HAVE_WASM, 1, [ Have wasm support ])

  PHP_SUBST(WASM_SHARED_LIBADD)
  PHP_ADD_LIBRARY_WITH_PATH(php_ext_wasm, ., WASM_SHARED_LIBADD)

  PHP_NEW_EXTENSION(wasm, wasm.c, $ext_shared)
fi
