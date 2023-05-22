//Utility classes,https://dart.dev/guides/libraries/library-tour#utility-classes

class Process {
  // Represents a process...
}

class ProcessIterator implements Iterator<Process> {
  final List<Process> _processes;
  int _index;

  ProcessIterator(this._processes) : _index = 0;

  @override
  Process get current => _processes[_index];

  @override
  bool moveNext() {
    _index++;
    return _index < _processes.length;
  }
}

class Processes extends Iterable<Process> {
  @override
  Iterator<Process> get iterator => ProcessIterator([
    // Add your processes here...
  ]);
}

void main() {
  for (final process in Processes()) {
    // Do something with the process.
  }
}

