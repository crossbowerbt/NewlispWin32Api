BEGIN {
    in_group = 0;
    in_typedef = 0;
    in_interface = 0;
    
    dll_name = "";
    typedef_name = "";

    print("(context 'WIN32)");
    print;
}

END {
}

function get_type(type_name, num_pointers) {
    if(num_pointers) {
	return ("(string " type_name " " (num_pointers > 1 ? "\"**\"" : "\"*\"") ")");
    }
    else
    {
        return type_name;
    }
}

function print_type(new_type_name, type_name, num_pointers) {
    print("(setq " new_type_name " " get_type(type_name, num_pointers) ")");
}

/^\/\// {
    /* line comment */
    sub(/^\/\//, ";;");
    print;
    next;
}

/^\/\*/ {
    /* multiline comment */
    sub(/\/\*/, ";;");
    sub(/\*\//, "");
    print;
    next;
}

/__declspec/ {
    /* define empty structs for declspec */
    print(";;", $0);

    sub(/;$/, "");
    print("(struct '" $3 ")")
    
    next;
}

/^#define/ {
    /* constants */

    num_pointers = gsub(/*/, "");
    $1 = $1;
    
    print_type($2, $3, num_pointers);

    next;
}

/^#include/ {
    /* load other file */
    sub(/[.]h"/, ".nl\"");
    print("(load", $2 ")");
    next;
}

/^interface/ {
    /* interface definition */
    in_interface = 1;
    print(";;", $0);
    next;
}

/^typedef .+;$/ {
    /* single line type definition */
    sub(/;$/, "");

    num_pointers = gsub(/*/, "");
    $1 = $1;

    print_type($3, $2, num_pointers);
    
    next;
}

/^typedef struct/ {
    /* struct definition */
    in_group = 1;
    in_typedef = 1;
    typedef_name = $3;

    print(";;", $0, "{");
    print("(struct '" $3)

    next;
}

/^alias) / {
    /* alias: assume is ulong by default */
    sub(/;$/, "");
    print_type($2, "\"unsigned long int\"", 0);
    next;
}

/^(mask|value) / {
    /* in a constants group */
    in_group = 1;
    print(";;", $0);
    next;
}

/^{/ {
    /* in a group */
    if(in_group || in_interface) {
        if(in_typedef == 0) {
            print(";;", $0);
        }
        next;
    }
}

/^}/ {
    /* in a group */

    if(in_interface) {
	in_interface = 0;
	print(";;", $0);
    }

    if(in_typedef) {
	print(")");

	/* if there is a comma more typedef aliases will follow */
	in_typedef = sub(/,/, "");

	sub(/;$/, "");
	
	num_pointers = gsub(/*/, "");
	$1 = $1;
    
	print_type($2, typedef_name, num_pointers);
    }
    
    if(in_group) {
	print(";;", $0);
	in_group = 0;
    }

    next;
}

// {
    /* skip interface block */
    if(in_interface) {
	print(";;", $0);
	next;
    }
}

/\($/ {
    /* open of a function */

    /* delete open parentesis */
    sub(/\($/, "");
    
    /* get function name and drop its field */
    func_name = $NF;
    NF--;

    /* calculate pointer type /
    num_pointers = gsub(/*/, "");

    /* reload line fields */
    $1 = $1;

    print("(import \"" dll_name "\" \"" func_name "\"", get_type($0, num_pointers));
    next;
}

/^)/ {
    /* close of a function */
    print ")";
    next;
}

/^    / {
    /* field definition */
    sub(/;$/, "");

    if(in_typedef && !in_group) {

	/* if there is a comma more typedef aliases will follow */
	in_typedef = sub(/,/, "");

	num_pointers = gsub(/*/, "");
	$1 = $1;
    
	print_type($1, typedef_name, num_pointers);
    }

    else {
	num_pointers = gsub(/*/, "");
	$1 = $1;
	
	print("    " get_type($1, num_pointers), ";", $2);
    }
    
    next;
}

/^module / {
    /* set current DLL name */
    print(";;", $0);
    
    sub(/:$/, "", $2);
    dll_name = $2;

    next;
}

/^category / {
    /* category */
    print(";;", $0);
    next;
}

{
    /* default */
    print($0);
}
