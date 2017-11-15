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

module Hello_dist {

	config const n = 20;
	use CyclicDist;
	const MessageSpace = {1..n} dmapped Cyclic(startIdx=1);

	forall i in MessageSpace do
		writeln("Hello from iter#", i, " running on node ", here.id);
	
}
