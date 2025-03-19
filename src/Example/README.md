# Converting Extracted C Code From Lean to Wat
**Assumptions**: 

1. you have [wabt](https://github.com/WebAssembly/wabt) installed and wasm2wat available.
2. you have [elan](https://github.com/leanprover/elan) installed

## Generate C source file:
```
lean example.lean -o example.c
```

## Compile C source file to Wasm (with optional optimization flag):
1. Unlinked Wasm:
```
clang example.c -target wasm32 -c -o example.wasm `leanc --print-cflags` [-Os]
```
or
```
leanc example.c -target wasm32 -c -o example.wasm [-Os]
```

2. Or Wasm (requires [wasm-toolchain](https://github.com/fix-project/wasm-toolchain)):
```
 ~/wasm-toolchain/sysroot/bin/clang example.c [-target wasm32-wasi] -o example.wasm `leanc --print-cflags` -Wl,--allow-undefined [-Os]
```

## Convert the generated Wasm to Wat:
```
wasm2wat example.wasm -o example.wat
```
