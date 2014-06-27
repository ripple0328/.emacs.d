;; (exec-path-from-shell-copy-env "PYTHONPATH")
(when (memq window-system '(mac ns))
	(exec-path-from-shell-initialize))
