# Automatically Extracting Lean_Wasm32 Files From Lean Release and Compiling Into Wasm/js Files

### File Structure

1. Main.lean: the same lean fun example we have as in the Example folder;
2. Example2Wasm.lean: extracting specified verision of Lean_wasm32 files from official release and unzip them. Extracted lean_wasm32 files will be stored in
    toolchains folder at the root of directory;
4. Lakefile.lean: similar to C Makefile;
5. lake-manifest.json: specify compiled output name;
   

### How to Use

1. Run `lake build test` to build the test program.
2. Run `lake build` to build the utility.
3. Run `lake exe example2wasm will compile the Main program and generate a main.js and main.wasm files in [.lake/build/wasm](https://github.com/sallywang147/LeanFunFix/tree/main/src/Example2Wasm/.lake/build/wasm) folder

Once compiled, you can run `node .lake/build/wasm/main.js` to run the program like below: 


<img width="375" alt="Screen Shot 2025-03-20 at 12 44 39 AM" src="https://github.com/user-attachments/assets/46e16b7a-b456-47f6-b755-228559592782" />

The [lake/build/wasm/main.js](https://github.com/sallywang147/LeanFunFix/blob/main/src/Example2Wasm/.lake/build/wasm/main.js) file will link headers from other lean wasm modules 

Likewise, we also have C files generated accordingly in the [.lake/build/ir](https://github.com/sallywang147/LeanFunFix/tree/main/src/Example2Wasm/.lake/build/ir) folder. 
