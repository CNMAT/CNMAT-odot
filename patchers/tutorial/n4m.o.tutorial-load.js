'use strict';

const fs = require('fs');
const Max = require('max-api');

var objary = [];

function printvalues(o){
	for(var i in o){
		let test = o[i]['box']['maxclass'];
		if(test != null){
			let patt = new RegExp('^o\.+', 'i');
			if(test.match(patt)){
				//console.log("found: " + test);
				objary.push(test);
			}
		}	
	}
	let unique = [...new Set(objary)];
	console.log("full list: ", objary);
	console.log("filtered: ", unique);
}

//printvalues(tobjects);

Max.addHandler("file", (msg) => {
	let rawdata = fs.readFileSync(msg);
	let tute = JSON.parse(rawdata);
	let tobjects = tute['patcher']['boxes'];
	printvalues(tobjects)
})