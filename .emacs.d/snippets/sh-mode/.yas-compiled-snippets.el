;;; Compiled snippets and support files for `sh-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'sh-mode
		     '(("die" "die() {\n    echo \"Error: ${1}. Abort.\"\n    exit 1\n}" "die function" nil nil nil nil nil nil)
		       ("expect" "expect -c \"set timeout -1\nspawn ${1:ssh}\nexpect {\n    \"(yes/no)?\" {send \"yes\\r\"; exp_continue}\n    \"password:\" {send \"${2:password}\\r\"}\n}\ninteractive\n\"$0" "expect script" nil nil nil nil nil nil)
		       ("findx" "for i in $(find ${1:. -maxdepth 1 -iname \"..\"} -print);\ndo\n    $0\ndone" "for i in $(find ... ); do .. done" nil nil nil nil nil nil)
		       ("for" "for((${1:i=0};${2:i<N};${3:i++}));\ndo\n    ${0}\ndone" "for ..; do .. done" nil nil nil nil nil nil)
		       ("if" "if [[ $1 ]]; then\n    $0\nfi\n" "if [[ .. ]]; then .. fi" nil nil nil nil nil nil)
		       ("len" "${#$1[*]}" "length of array" nil nil nil nil nil nil)
		       ("while" "while [[ $1 ]];\ndo\n    $0\ndone" "while [[ .. ]]; do .. done" nil nil nil nil nil nil)))


;;; Do not edit! File generated at Wed Apr 17 16:58:18 2013
