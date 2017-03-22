# NOTE that you must first have an sdk environment; the following lines of code, uncommented, will get you that before running the transpile of .c and .cpp sources to WebAssembly, assuming you've got a c++ compiler environment in your PATH; see: http://webassembly.org/getting-started/developers-guide/

# git clone https://github.com/juj/emsdk.git
# cd emsdk
# ./emsdk install sdk-incoming-64bit binaryen-master-64bit
# ./emsdk activate sdk-incoming-64bit binaryen-master-64bit
# source ./emsdk_env.sh
# cd ..

emcc ./helloworld.c -s WASM=1 -o helloworld.html

emcc ./cin_cout_test.cpp -s WASM=1 -o cin_cout_to_wasm_test.html

# ADDITIONAL NOTES; at this writing:
# - the compiler toolkit automatically adds some header/front material fluff. That can be removed; how I don't know yet.
# - I am able to run the web assembly by simply opening the accompanying .html files from local storage (a file on my mac) in firefox. Safari chokes on it, though. What? Yer supposed to be "innovate," you Mac folks ;)
# - the cin_cout_test.cpp doesn't behave as would be hoped; in firefox at least it displays and then vanishes a message (way too fast probably even to be actually rendered), followed by a mysterious javascript(-esque?) input prompt.
