import { notNotOdd }  from "../../../../../../../index.js";
//this needs to become a readable stream

const main = (num) => {
    console.log(notNotOdd(num))
    return new ReadableStream(notNotOdd(num))
}

console.log(main(1));