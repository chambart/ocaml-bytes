AC_INIT(bytes.mli)

AC_PROG_OCAML
if test "$OCAMLC" = "no"; then
  AC_MSG_ERROR([You must install the OCaml compiler])
fi

AC_CHECK_FILE($OCAMLLIB/bytes.cmi,HAS_BYTES=yes,HAS_BYTES=no)

AC_SUBST(OCAMLC)
AC_SUBST(OCAMLOPT)
AC_SUBST(HAS_BYTES)

AC_OUTPUT(Makefile)
chmod a-w Makefile
