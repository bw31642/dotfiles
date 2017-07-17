;;; Compiled snippets and support files for `php-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'php-mode
		     '(("=" "<?=$1?>" "<?=..?>" nil nil nil nil nil nil)
		       ("db" "$this->db->database($1)" "$this->db->database()" nil nil nil nil nil nil)
		       ("db.1" "$this->db->query(\"$1\")" "$this->db->query(..)" nil nil nil nil nil nil)
		       ("db.2" "$this->db->affected_rows()" "$this->db->affected_rows()" nil nil nil nil nil nil)
		       ("db.3" "$this->db->get(\"$1\")" "$this->db->get(..)" nil nil nil nil nil nil)
		       ("db.4" "$this->db->insert(\"$1\",$2)" "$this->db->insert(..,)" nil nil nil nil nil nil)
		       ("db.5" "$this->db->escape(\"$1\")" "$this->db->escape(..)" nil nil nil nil nil nil)
		       ("db.6" "$this->db->insert_id()" "$this->db->insert_id()" nil nil nil nil nil nil)
		       ("foreach" "foreach($1 as $2){\n    $0\n}\n" "foreach(..){..}" nil nil nil nil nil nil)
		       ("function" "function $1($2){\n    $0\n}\n" "function(..){..}" nil nil nil nil nil nil)
		       ("lang" "$this->lang->line(\"$1\")" "lang" nil nil nil nil nil nil)
		       ("load" "$this->load->view(\"$1\",${2:\\$data})" "$this->load->view(..)" nil nil nil nil nil nil)
		       ("load.1" "$this->load->model(\"$1\")" "$this->load->model(..)" nil nil nil nil nil nil)
		       ("load.2" "$this->load->library(\"$1\")" "$this->load->library(..)" nil nil nil nil nil nil)
		       ("load.3" "$this->load->helper(\"$1\")" "$this->load->helper(..)" nil nil nil nil nil nil)
		       ("out" "$out[] = " "$out = .." nil nil nil nil nil nil)
		       ("this" "$this->$1->$2($3)" "$this->obj->func(..)" nil nil nil nil nil nil)))


;;; Do not edit! File generated at Wed Apr 17 16:58:18 2013
