;;; This is the main module of `Quijote.wasm` 
;;; which is a virtual DOM library.
;;; ------
(module $main
  (import "std" "debug"
    (func $debug (param $index i32) (param $offset i32))
  )
  (memory 1)
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
