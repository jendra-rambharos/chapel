module Hello_module {
	config const message = "Hello Jendra!";

	proc main() {

		writeln(message);
	
	}
}

module Hello_iter {

	config const n = 20;

	forall i in 1..n do
		writeln("Hello from iter #",i);

}
