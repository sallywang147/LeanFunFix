# Quick Intro

The files in this folder can be obtained from running [these scripts](https://github.com/leanprover-community/lean/blob/master/doc/make/index.md) in Lean3 repo.

It's also released [here](https://github.com/leanprover-community/lean/releases/tag/v3.26.0) for browser version

Lean4 currently doesn't seem to support compillation of full Lean4 source code to wasm yet. But we can build a 32-bit Lean (e.g. by WASM-Lean running in Node.js)

WASM is currently a 32-bit platform. Consequently, WASM-Lean cannot load "standard" 64-bit .oleans compiled by a 64-bit native Lean4 binary. So the .oleans must be either made platform independent (this is not great since the naïve implementation increases importing overhead on 64-bit platforms, whereas a more complex implementation would be, well, more complex), or they must be built by a 32-bit Lean (e.g. by WASM-Lean running in Node.js). The 64-bit WASM extension is not widely supported as of now.

Some relevant developer chats on Lean4 on compiling lean4 source code to wasm: [1](https://leanprover-community.github.io/archive/stream/270676-lean4/topic/web.20editor.html), [2](https://leanprover-community.github.io/archive/stream/270676-lean4/topic/web.20editor.html). 

## TODO
compiling partial lean4 source code to wasm, if needed 
