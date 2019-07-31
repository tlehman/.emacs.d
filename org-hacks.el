;; Org Mode hacks

(defun org-insert-src-block ()
  (insert "#+begin_src \n\n#+end_src"))

(org-add-link-type "jira" 'org-jira-open)
(defun org-jira-open (ticket)
  "Visit the website for Jira ticket described by TICKET"
  (browse-url (concat "https://jira.elemental.amazon.com/browse/" ticket)))

(org-add-link-type "rfc" 'org-rfc-open)
(defun org-rfc-open (rfcnum)
  "Visit the nodelender machine"
  (eww-browse-url (format "https://www.rfc-editor.org/rfc/rfc%s.txt" rfcnum)))

(org-add-link-type "node" 'org-nodelender-open)
(defun org-nodelender-open (nodename)
  "Visit the nodelender machine"
  (browse-url (concat "https://nodelender.elementalad.com/#/nodes?node=" nodename)))

(org-add-link-type "build" 'org-build-open)
(defun org-build-open (buildnum)
  "Visit the nodelender machine"
  (browse-url (concat
	       "http://grouper.elementalad.com/#/build-dashboard?product=All&column=startTime&order=descending&category=id&search="
	       buildnum)))
