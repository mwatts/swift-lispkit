;;; SCHEME STREAM
;;;
;;; Scheme stream library. This library is part of the Scheme Red edition of the R7RS
;;; large language.
;;;
;;; Author: Matthias Zenger
;;; Copyright © 2018 Matthias Zenger. All rights reserved.
;;;
;;; Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file
;;; except in compliance with the License. You may obtain a copy of the License at
;;;
;;;   http://www.apache.org/licenses/LICENSE-2.0
;;;
;;; Unless required by applicable law or agreed to in writing, software distributed under the
;;; License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
;;; either express or implied. See the License for the specific language governing permissions
;;; and limitations under the License.

(define-library (scheme stream)

  (export stream-null
          stream-cons
          stream?
          stream-null?
          stream-pair?
          stream-car
          stream-cdr
          stream-lambda
          define-stream
          list->stream
          port->stream
          stream
          stream->list
          stream-append
          stream-concat
          stream-constant
          stream-drop
          stream-drop-while
          stream-filter
          stream-fold
          stream-for-each
          stream-from
          stream-iterate
          stream-length
          stream-let
          stream-map
          stream-match
          stream-of
          stream-range
          stream-ref
          stream-reverse
          stream-scan
          stream-take
          stream-take-while
          stream-unfold
          stream-unfolds
          stream-zip)

  (import (srfi 41))
)
 
