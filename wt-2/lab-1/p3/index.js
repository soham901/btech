function sumOfSeries(n) {
  let sum = 0;
  for (let i = 1; i <= n; i++) {
    sum += Math.pow(i, 2);
  }
  return sum;
}

function printFirst50(gap = 3) {
  let res = "";
  for (let i = 1; i <= 50; i += gap) {
    res += `${i} `;
  }
  return res;
}

function printSumOfSeries(n) {
  let sum = 0;
  for (let i = 1; i <= n; i++) {
    if (i % 2 === 0) sum -= i;
    else sum += i;
  }
  return sum;
}

function factorial(n) {
  let res = 1;
  for (let i = 1; i <= n; i++) {
    res *= i;
  }
  return res;
}

function factors(n) {
  let res = [];
  for (let i = 1; i <= n; i++) {
    if (n % i === 0) res.push(i);
  }
  return res;
}

const checkIfPerfect = (n) =>
  factors(n)
    .filter((f) => f !== n)
    .reduce((a, b) => a + b, 0) === n;

const checkIfPrime = (n) => factors(n).length === 2;

const checkIfPalidrome = (n) =>
  n.toString() === n.toString().split("").reverse().join("");

const checkIfArmstrong = (n) =>
  n
    .toString()
    .split("")
    .map((v) => Math.pow(v, n.toString().length))
    .reduce((a, b) => a + b, 0) === n;

const n = parseInt(process.argv[2]);

console.log(`sumOfSeries(${n}) = ${sumOfSeries(n)}`);
console.log(`printFirst50(3) = ${printFirst50(3)}`);
console.log(`printSumOfSeries(${n}) = ${printSumOfSeries(n)}`);
console.log(`factorial(${n}) = ${factorial(n)}`);
console.log(`factors(${n}) = ${factors(n)}`);
console.log(`checkIfPerfect(${n}) = ${checkIfPerfect(n)}`);
console.log(`checkIfPrime(${n}) = ${checkIfPrime(n)}`);
console.log(`checkIfPalidrome(${n}) = ${checkIfPalidrome(n)}`);
console.log(`checkIfArmstrong(${n}) = ${checkIfArmstrong(n)}`);
