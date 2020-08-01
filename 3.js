var removeDuplicate = (string) => string.split("").reduce((s, c) => {
  if (s) {
    if (-1 == s.indexOf(c)) return s + c;
  }
  return s;
});

document.write(removeDuplicate("alagcgcdodol"));