;;; Compiled snippets and support files for `makefile-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'makefile-mode
		     '(("ap" "$(addprefix ${1:-l}, ${2:\\$(LIBS)})" "$(addprefix string, $(list))" nil nil nil nil nil nil)
		       ("all" "all:\n    $0" "all" nil nil nil nil nil nil)
		       ("fo" "$(filter-out ${1} ${2})" "$(filter-out $(match-list) $(all-list))" nil nil nil nil nil nil)
		       ("ifneq" "ifneq (${1}, ${2})\n    $3\nelse\n    $4\nendif" "ifneq (val1, val2) ... else ... endif" nil nil nil nil nil nil)
		       ("ps" "$(patsubst ${1:%.c}, ${2:%.o}, ${3:\\$(SOURCE)})" "$(patsubst pattern, replace, $(list))" nil nil nil nil nil nil)
		       ("ph" ".PHONY = $0" "phony" nil nil nil nil nil nil)
		       ("tplb" "\nEXECUTABLE := ${1:example-exec}\nLIBS       := ${2:rt m}\n\nCFLAGS     := ${3:-g -Wall -O3}\nCXXFLAGS   := $(CFLAGS)\nCC         := gcc\n\n# You shouldn't need to change anything below this point.\n#\nSOURCE := $(wildcard *.c) $(wildcard *.cpp)\nOBJS := $(patsubst %.c,%.o,$(patsubst %.cpp,%.o,$(SOURCE)))\nDEPS := $(patsubst %.o,%.d,$(OBJS))\nMISSING_DEPS := $(filter-out $(wildcard $(DEPS)),$(DEPS))\nMISSING_DEPS_SOURCES := $(wildcard $(patsubst %.d,%.c,$(MISSING_DEPS)) \\\n				$(patsubst %.d,%.cpp,$(MISSING_DEPS)))\nCPPFLAGS += -MD\nRM-F := rm -f\n..PHONY : everything deps objs clean veryclean rebuild\neverything : $(EXECUTABLE)\ndeps : $(DEPS)\nobjs : $(OBJS)\nclean :\n	@$(RM-F) *.o\n	@$(RM-F) *.d\nveryclean: clean\n	@$(RM-F) $(EXECUTABLE)\nrebuild: veryclean everything\nifneq ($(MISSING_DEPS),)\n	$(MISSING_DEPS) :\n	@$(RM-F) $(patsubst %.d,%.o,$@)\nendif\n-include $(DEPS)\n$(EXECUTABLE) : $(OBJS)\n	$(CC) -o $(EXECUTABLE) $(OBJS) $(addprefix -l,$(LIBS))\n" "a better makefile template" nil nil nil nil nil nil)
		       ("tpl.draft" "\n.SUFFIXES: .c .cpp\n.PHONY: check-syntax clean all\n\nCC=gcc\nCXX=g++\nCFLAGS=-g -O0 -std=c99 -Wall -Wextra\nCXXFLAGS=-g -O0 -Wall -Wextra\n\nEDF=\n\nINCS=-I.\nLIBS=-L.\nSRCS=\n\nall: $0\n\n# flymake\ncheck-syntax:\n	$(CXX) $(CXXFLAGS) -Wall -Wextra -pedantic -fsyntax-only $(SRCS)\n\n\n%: %.c\n	$(CC) -o $@ $^ $(CFLAGS) $(INCS) $(LIBS)\n\n%.o: %.c\n	$(CC) -o $@ -c $^ $(CFLAGS) $(INCS) $(LIBS)\n\n%: %.cpp\n	$(CXX) -o $@ $^ $(CXXFLAGS) $(INCS) $(LIBS)\n\n%.o: %.cpp\n	$(CXX) -o $@ -c $^ $(CXXFLAGS) $(INCS) $(LIBS)\n\nclean:\n	-rm *.o" "another makefile template" nil nil nil nil nil nil)
		       ("tpl" "\n.SUFFIXES: .h .cpp\n\nCC=g++\n\n${1:TEST} = ${2:$$(downcase (yas/field-value 1))}\n$1_O = $2.o $0\n\nALL: \\${$1}\n\n\\${$1}: \\${$1_O}\n	$(CC) -o \\${$1} \\${$1_O}\n\n%.o:%.cpp %.h\n	$(CC) -Wall -g -O0 -o $@ -c $<\n\n# for solo cpp\n%.o:%.cpp\n	$(CC) -Wall -g -O0 -o $@ -c $<\n\nclean:\n	-rm -f *.o\n	-rm -f $2\n" "A simple makefile template" nil nil nil nil nil nil)
		       ("wc" "$(wildcard ${1:%.o})" "$(wildcard match-string)" nil nil nil nil nil nil)))


;;; Do not edit! File generated at Wed Apr 17 16:58:18 2013
