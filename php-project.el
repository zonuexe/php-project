;;; php-project.el --- PHP Project Manager -*- lexical-binding: t -*-

;; Copyright (C) 2016 USAMI Kenta

;; Author: USAMI Kenta <tadsan@zonu.me>
;; Created: 28 Aug 2016
;; Version: 0.0.1
;; Keywords: php project manager
;; Package-Requires: ((emacs "24") (s "1.9.0") (f "0.17"))

;; This file is NOT part of GNU Emacs.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;; Code:
(require 'f)
(require 'json)

(defun php-project--find-root (directory)
  "Return directory path which include composer.json by `DIRECTORY'."
  (let ((composer-json (f-join directory "php-project.json")) parent)
    (if (file-exists-p composer-json)
        (concat (f-dirname composer-json) "/")
      (setq parent (f-dirname directory))
      (if (null parent)
          nil
        (php-project--find-root (f-dirname directory))))))

(defun php-project--parse-json ()
  "Parse `php-project.json'."
  (json-read-file (f-join (php-project--find-root default-directory) "php-project.json")))


(provide 'php-project)
;;; php-project.el ends here
