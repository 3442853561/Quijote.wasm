;;; This is the main module of `Quijote.wasm` 
;;; which is a virtual DOM library.
;;; ------
(module $main
  (import "std" "debug"
    (func $debug (param $index i32) (param $offset i32))
  )
  (import "std" "memory"
    (memory 1)
  )
  ;; test: debug
  ;; (data (i32.const 0) "\04\00\00\00")
  ;; (data (i32.const 4) "test")
  (func (export "debug") (param $index i32)
    ;; call $debug($index + 4, *$index)
    get_local $index
    i32.const 4
    i32.add
    get_local $index
    i32.load
    call $debug
  )
)
