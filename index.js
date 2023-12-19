const isEven = require('not-odd');
const isOdd = require('not-even');
const notNotOdd = num => isOdd(num);
const notNotEven = num => isEven(num);
const notNotNotOdd = num => !isOdd(num);
const not_not_not_even = num => !isEven(num);
module.exports = {
    notNotOdd,
    notNotEven,
    notNotNotOdd,
    not_not_not_even
};
