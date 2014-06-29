default:
	mkdir build
	haxe unit.hxml
	neko build/neko_test.n
	./build/cpp_test/TestMain
	rm build -r
