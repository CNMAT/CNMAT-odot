#include <stdio.h>
#include <string.h>
#include "osc.h"
#include "osc_parser.h"
#include "osc_expr.h"
#include "osc_expr_parser.h"

/*
 to run test:
	cd libo
	make -e clean; make -e
 to make test file
	make -e -k test
	test/osc_expr_test
 */

//takes a string, oscizes and then turns it back into a string
char * validate_osc_string(char * bundle_string){
	t_osc_bndl_u *bndl = NULL;
	t_osc_parser_subst *subs = NULL;
	long nsubs = 0;
	//printf("bundle: %s\n", bundle_string);
	t_osc_err err = osc_parser_parseString(strlen(bundle_string)+2, bundle_string, &bndl, &nsubs, &subs);
	if (err != 0){
		printf("%s\n", osc_error_string(err));	
	}
	//^multiple bundles need to be /n delimited. 
	//not using this for now
	while(subs){ //subs is linked list of $n substitutions that need to take place
		t_osc_parser_subst *next = subs->next;
		osc_mem_free(subs);
		subs = next;
	}
	char *sbndl = NULL;
	long sbndl_len = 0;
	osc_bundle_u_serialize(bndl, &sbndl_len, &sbndl); //serialize the bundle
	char *buf = NULL;
	long buflen = 0;
	osc_bundle_s_format(sbndl_len, sbndl, &buflen, &buf);
	return buf;
}

//input an expression and a bundle with data and have it evaluate the expression and compares the results to answer. 
int test_expression(char *expr, char *bundle_string, char *answer){
	t_osc_expr *f = NULL; //f = function = lambda
	int ret = osc_expr_parser_parseString(expr, &f); //parse expression string. returns valid or not
	if(ret){
		printf("parsing %s failed\n", expr);
		osc_expr_free(f);
		return 0;
	}	
	//text representation of the function tree
	char *functiongraph = NULL;
	long len = 0;
	osc_expr_formatFunctionGraph(f, &len, &functiongraph); //from osc_expr.c
	
	t_osc_bndl_u *bndl = NULL;
	t_osc_parser_subst *subs = NULL;
	long nsubs = 0;
	//printf("bundle: %s\n", bundle_string);
	osc_parser_parseString(strlen(bundle_string)+2, bundle_string, &bndl, &nsubs, &subs); //unserialized oscizer. throw valid bundles at this and see if it parses it.
	//^multiple bundles need to be /n delimited. 
	while(subs){ //subs is linked list of $n substitutions that need to take place
		t_osc_parser_subst *next = subs->next;
		osc_mem_free(subs);
		subs = next;
	}
	char *ser_bundle = NULL;
	long sbndl_len = 0;
	osc_bundle_u_serialize(bndl, &sbndl_len, &ser_bundle); //serialize the bundle
	
	//char * ser_bundle = bundalize_osc_string(bundle_string);
	
	t_osc_atom_ar_u *out = NULL;
	ret = osc_expr_funcall(f, &sbndl_len, &ser_bundle, &out);//calls the function on the bundle
	osc_atom_array_u_free(out);
	
	char *buf = NULL;
	long buflen = 0;
	osc_bundle_s_format(sbndl_len, ser_bundle, &buflen, &buf);
	char bufcopy[strlen(buf)];
	strcpy(bufcopy, buf);
	char * formated_answer = validate_osc_string(answer);
	char answer_copy[strlen(formated_answer)];
	strcpy(answer_copy, formated_answer);
	//make sure that the answer provided is the same as the answer computed
	ret = compare_answer(buf, formated_answer);
	if (ret==0){
		printf("expecting: '%s', but instead got: '%s'\n", answer_copy, bufcopy);
	}
	//free all the memory
	osc_bundle_u_free(bndl);
	if(ser_bundle){
		osc_mem_free(ser_bundle);
	}
	if(buf){
		osc_mem_free(buf);
	}
	osc_expr_free(f);
	if(functiongraph){
		osc_mem_free(functiongraph);
	}
	return ret;
}


int contains_str(char * str, char * substring){
	int i;
	for (i = 0; i < strlen(str); i++) {
		if ((strlen(str)+i)>=strlen(substring)){
			if (strncmp(str+i, substring, strlen(substring)) == 0){
				return 1;
			}
		}
	}
	return 0;
}

int compare_answer(char * evaled, char * answer){
	int ret = 1;
	char temp_evaled[strlen(evaled)];
	strcpy(temp_evaled, evaled);
	char * expr = strtok (temp_evaled,"\n");
	//test if all of the expression are in the answer
	while (expr != NULL){
		ret*=contains_str(answer, expr);
		expr = strtok (NULL,"\n");
	}
	//also test that all of the answers are in the expression
	char * ans_expr = strtok (answer,"\n");
	while (ans_expr != NULL){
		ret*=contains_str(evaled, ans_expr);
		ans_expr = strtok (NULL,"\n");
	}
	return ret;
}

void format_newline(char * str){
	int i;
	for(i = 1; i < strlen(str); i++){
		if (str[i-1]=='\\' && str[i]=='n'){
			str[i-1] = ' ';
			str[i] = '\n';
			
		}
	}
}



int eval_test(char * line){
	char * expr;
	char * bundle;
	char * answer;
	int pass = 0;
	if (line[0]!='#'){
		//printf("%s\n", line);
		char delims[] = ";";
		expr = strtok( line, delims );
		bundle = strtok( NULL, delims );
		answer = strtok( NULL, delims );
		//format_newline(expr);
		//format_newline(bundle);
		//format_newline(answer);
		pass = test_expression(expr, bundle, answer);
		if (pass==0){
			//printf("the expression \"%s\" and bundle \"%s\" do not produce the answer \"%s\"\n", expr, bundle, answer);
		}
	}
	return pass;
	//printf("%s,%s,%s\n", expr, bundle, answer);
	//test_expression("/one = /three - 2", "/three 3 \n", NULL);
	//printf("%d\n",test_expression(expr, bundle, answer));	
	//printf("%d\n",strncmp(bundle, "/three 3 \n", 10));
	//format_string(bundle);
	//printf("%s\n", bundle);
}

void eval_file(FILE *expression_file){
	char test[1024]; //the tests are currently limited to 1k
	int testcount = 0;
	int testpassed = 0;
	int pos = 0;
	char next;
	while ( (next = fgetc(expression_file)) != EOF){
		//printf("%c", next);
		if (next=='#') { //gets rid of comments
			char throwaway[1024];
			fgets(throwaway, 1024, expression_file);
			//printf("comment %s", throwaway);
			continue;
		} 
		if (next=='@') {
			test[pos] = '\0';
			testcount++;
			testpassed += eval_test(test);
			//printf("test: %s\n", test);
			pos = 0;
			continue;
		}
		test[pos]=next;
		pos++;
		/*
		if (line[0]!='#'){
			testcount++;
			testpassed+=eval_test(line);
		}
		 */
	}
	printf("%d/%d tests passed\n", testpassed, testcount);
	//printf("returned %d\n",
}



int main(int argc, char **argv){
	//printf("string compare %d\n", contains_str("help", "pl"));
	//compare_answer("/foo 1 \n /test 2", "/foo 1 \n /test 2"); 
	//add some code here that will get a file from the commandline arg
	FILE *expression_file = fopen ("test/expressions.txt" , "r");
	if (expression_file == NULL) perror("Error opening file");
	eval_file(expression_file);
	
	
}


