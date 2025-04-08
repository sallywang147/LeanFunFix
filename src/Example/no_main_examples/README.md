## Working Wasm Module Prototype on Fix

### Annotating Lean checkNumber Example by Fix API
Inspired by the [add_simple.wat](https://github.com/fix-project/fix/blob/master/testing/wasm-examples/add-simple.wat) in the Fix repo, we manually annotated our checkNumber example using the Fix API [here](https://github.com/sallywang147/LeanFunFix/blob/main/src/Example/no_main_examples/UserCheckNumber.wat)
We compile the .wat file to the [UserCheckNumber.wasm file](https://github.com/sallywang147/LeanFunFix/blob/main/src/Example/no_main_examples/UserCheckNumber.wasm) by wasm2wat.
To run our own checkNumber example by the fix eval script, you can do the following: 
```
./build/src/tester/fix eval application: tree:3 tree:1 uint64:1000000 compile: file:~/LeanFunFix/src/Example/no_main_examples/UserCheckNumber.wasm uint32:9
```
You should be able to see the following value and fix decode structure: 
<img width="1175" alt="Screen Shot 2025-04-08 at 2 28 48 AM" src="https://github.com/user-attachments/assets/c5141548-03c2-416b-8635-fa4acb319186" />
<img width="1176" alt="Screen Shot 2025-04-08 at 2 29 06 AM" src="https://github.com/user-attachments/assets/0a31d15e-c7f0-4781-9c64-6a3a225f9dc7" />

### Compile and Run Lean checkNumber Example by Wasmtime

We can also run a user case of checkNumber by calling `wasmtime run user.wasm [a number]`. Here is what user.wasm do: 

Our [user.c](https://github.com/sallywang147/LeanFunFix/blob/main/src/Example/no_main_examples/user.c) imports the l_checkNumber function from the [C version](https://github.com/sallywang147/LeanFunFix/blob/main/src/Example/no_main_examples/lean_checknumber.c) of 
our original checkNumber function in [checkNumber.lean](https://github.com/sallywang147/LeanFunFix/blob/main/src/Example/no_main_examples/no_main_example.lean)

Then we compile user.c to [user.wasm](https://github.com/sallywang147/LeanFunFix/blob/main/src/Example/no_main_examples/user.wasm), or [user.wat](https://github.com/sallywang147/LeanFunFix/blob/main/src/Example/no_main_examples/user.wat)

For example, you should be able to seee something like below: 

<img width="854" alt="Screen Shot 2025-04-08 at 2 36 22 AM" src="https://github.com/user-attachments/assets/c05bac3c-4016-4b39-a129-b608dc26aa54" />
