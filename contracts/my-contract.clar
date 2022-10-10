;; CLARITY.TOOLS
;;
;; Build smart contracts on the Stacks blockchain.
;; Open the drawer on the left for an introduction to Clarity,
;; contract examples, and extended language features.

;; Expressions are instantly evaluated in the side panel:

(print "Hello World")

;; Change any of the numbers for a different sum:

(+ 2 3 5)

;; Here is an on-chain counter that can be incremented by anyone:

(define-data-var counter int 0)

(define-read-only (get-counter)
  (var-get counter))

(get-counter)

(define-public (increment-counter)
  (let ((value (var-get counter)))
    (ok (var-set counter (+ value 1)))))

(increment-counter)

(get-counter)
  
;; Sign in to evaluate with your own account as principal:

(print tx-sender)

(stx-get-balance tx-sender)

;; Open the Toolbox on the top right to deploy the contract on the Blockchain.