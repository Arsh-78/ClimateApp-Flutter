void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String res = await task2();
  task3(res);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future task2() async {
  Duration d = Duration(seconds: 3);
  String result;
  await Future.delayed(d, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });

  return result;
}

void task3(String a) {
  String result = 'task 3 data';
  print(a + 'Task 3 complete');
}
