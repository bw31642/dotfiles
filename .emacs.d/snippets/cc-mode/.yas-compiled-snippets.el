;;; Compiled snippets and support files for `cc-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'cc-mode
		     '(("comment" "/* ${1:$(make-string (+ 8 (string-width text)) ?\\*)} */\n/* **  ${1:comments}  ** */\n/* ${1:$(make-string (+ 8 (string-width text)) ?\\*)} */\n$0" "/* ** comments ** */" nil nil nil nil nil nil)
		       ("def" "#define $1 $2" "#define A B" nil nil nil nil nil nil)
		       ("def.1" "#ifndef $1\n#define $1 $2\n#endif /* $1 */" "#ifndef A #define A B #endif" nil nil nil nil nil nil)
		       ("do" "do {\n    $0\n} while (${1:condition});" "do { ... } while (...)" nil nil nil nil nil nil)
		       ("for" "for (${1:int i = 0}; ${2:i < N}; ${3:++i}) {\n    $0\n}" "for (...; ...; ...) { ... }" nil nil nil nil nil nil)
		       ("guard" "#ifndef ${1:NAME}_H\n#define $1_H\n\n$0\n\n#endif // $1" "guard" nil nil nil nil nil nil)
		       ("if" "if (${1:condition}) {\n    $0\n}" "if (...) { ... }" nil nil nil nil nil nil)
		       ("ifdef" "#ifdef ${1:MACRO}\n$0${2:\n#else\n}\n#endif /* $1 */" "#ifdef ... #endif" nil nil nil nil nil nil)
		       ("inc" "#include \"$1\"" "#include \"...\"" nil nil nil nil nil nil)
		       ("incc" "#include <${1:$$(yas/choose-value '(\"assert.h\" \"errno.h\" \"limits.h\" \"signal.h\" \"stdarg.h\" \"stddef.h\" \"string.h\" \"stdlib.h\" \"stdio.h\"))}>" "#include <...>" nil nil nil nil nil nil)
		       ("main" "int main(int argc, char *argv[]){\n    $0\n    return 0;\n}\n" "int main(argc, argv) { ... }" nil nil nil nil nil nil)
		       ("once" "#ifndef ${1:_`(upcase (file-name-nondirectory (file-name-sans-extension (buffer-file-name))))`_H_}\n#define $1\n$0\n#endif /* $1 */" "#ifndef XXX; #define XXX; #endif" nil nil nil nil nil nil)
		       ("struct" "struct ${1:name} {\n    $2\n};" "struct ... { ... }" nil nil nil nil nil nil)
		       ("?" "(${1:cond}) ? ${2:then} : ${3:else};" "ternary" nil nil nil nil nil nil)
		       ("typedef" "typedef ${1:type} ${2:alias};" "typedef" nil nil nil nil nil nil)))


;;; Do not edit! File generated at Wed Apr 17 16:58:17 2013
