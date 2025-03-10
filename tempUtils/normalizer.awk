BEGIN {
    return_type_detected = 0;
    in_comment = 0;
}

END {
}

/\t/ {
    /* change tabs into spaces */
    sub(/\t/, "    ");
}

/\/\// {
    /* delete line comments */
    sub(/\/\/.*/, "");
}

/\/\*/ {
    /* delete multi line comments */
    single_line_comment = sub(/\/\*.*\*\//, "");

    if(!single_line_comment) {
	in_comment = 1;
	sub(/\/\*.*/, "");
	next;
    }
}

// {
    /* delete multi line comments (pt. 2) */
    if(in_comment) {
	end_of_multi_line_comment = sub(/.*\*\//, "");

	if(!end_of_multi_line_comment) {
	    next;
	} else {
	    in_comment = 0;
	}
    }
}

/__declspec/ {
    /* skip declspec strutures */
    print;
    next;
}

/#.+\/\*/ {
    /* erase comments on macros */
    sub(/\/\*.+/, "");
}

/^\s+#/ {
    /* assure that macros always start at the beginning of the line */
    sub(/^\s+#/, "#");
}

/\(./ {
    /* assure that a newline follows an open parentesis */
    gsub(/\(/, "(\n    ");
}

/.)/ {
    /* assure that a newline precedes a close parentesis */
    gsub(/)/, "\n)");
}

/.\{/ {
    /* assure that a space precedes an open graph */
    gsub(/\{/, " {");
}

/\{./ {
    /* assure that a newline follows an open graph */
    gsub(/\{/, "{\n    ");
}

/.}/ {
    /* assure that a newline precedes a close graph */
    gsub(/}/, "\n)");
}

/[\*]/ {
    /* pointers should be attached to their type */
    done = sub(/\s*\*\s*\*\s*/, "** ");
    if(!done) {
	sub(/\s*\*\s*/, "* ");
    }
}

/,./ {
    /* assure that a newline follows a comma */
    gsub(/,/, ",\n    ");
}

/\[[^\]]+\]/ {
    /* delete [in] and [out] directives */
    gsub(/\[[^\]]+\]/, "");
}

/^[^#\s][^,\(\{;\/:]+$/ {
    /* normalize function return types */

    gsub(/\n/, "");
    printf "%s ", $0;

    return_type_detected = 1;
    
    next;
}

/^$/ {
    /* normalize function return types (pt. 2) */
    if (return_type_detected) {
	next;
    }
}

/[\()\{},]/ {
    /* normalize function return types (pt. 3) */
    return_type_detected = 0;
}

{
    print;
}
