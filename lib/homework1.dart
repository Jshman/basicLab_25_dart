int homework(int number) {
  int ret = 0;

  while (number > 0) {
    ret += number %10;
    number ~/= 10;
  }

  return ret;
}