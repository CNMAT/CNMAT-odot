'use strict';

const fs = require('fs');
const Max = require('max-api');

var objary = [];

function printvalues(o){
	for(var i in o){
		let mc = o[i]['box']['maxclass'];
		
		if(mc.match(/^(o.compose|o.display|o.expr.codebox|newobj)$/)){
			//console.log("class: " + mc);
			let tx = o[i]['text'];
			
			
		//	if(tx != null){
				console.log("text: " + tx);
				let patt = new RegExp(/o\.+/);
				console.log("found: " + tx.match(patt));
				//objary.push(tx);
		//	}
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
	objary = [];
	printvalues(tobjects)
})