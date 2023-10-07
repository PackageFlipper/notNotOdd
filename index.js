const isEven = require('not-odd');
const isOdd = require('not-even');
const notNotOdd = num => isOdd(num);
const notNotEven = num => isEven(num);
module.exports = {
    notNotOdd,
    notNotEven
};
