.PHONY: build run clean

build: 
	   cd ./1_Programm && $(MAKE) build && cd ..
	   cd ./2_Programm && $(MAKE) build && cd ..
run:
	   gnome-terminal -- bash -c "./2_Programm/build/*exe; exec bash"
	   ./1_Programm/build/*_exe

clean:
	   rm -rf ./build
	   rm -rf 1_Programm/build/
	   rm -rf 2_Programm/build/