					; Dates and times. But really, dates are just names given to points in time.
					; TODO: include proper time calculation along a geodesic in (3+1)-spacetime,
					; at least that should be easier than getting time zones right the first time.
(defun todays-date-string ()
  (shell-command-to-string "echo -n $(date +\"%Y-%m-%d\")"))

(defun todays-date ()
  (let ((ds (s-split "-" (todays-date-string))))
    (mapcar 'string-to-number ds)))

(defun todays-year () (nth 0 (todays-date)))
(defun todays-month () (nth 1 (todays-date)))
(defun todays-day () (nth 2 (todays-date)))

(defun insert-todays-date()
  (interactive)
  (insert (todays-date-string)))
