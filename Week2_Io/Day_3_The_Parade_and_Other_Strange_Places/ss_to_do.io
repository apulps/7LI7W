# Enhance the XML program to add spaces to show the indentation structure.
"Output 1" println
Builder := Object clone
Builder counter := 0
Builder indentation := method("\t" repeated(counter))
Builder forward := method(
    writeln(indentation, "<", call message name, ">")
    counter = counter + 1
    call message arguments foreach(
        arg,
        content := self doMessage(arg);
        if (content type == "Sequence", writeln(indentation, content))
    )
    counter = counter - 1
    writeln(indentation, "</", call message name, ">")
)

Builder ul(
    li("Io"),
    li("Lua"),
    li("JavaScript")
)
"" println


# Create a list syntax that uses brackets.
"Output 2" println
curlyBrackets := method(
    l := List clone
    call message arguments foreach(
        arg,
        l append(arg)
    )
)

l := {0, 1, 2, 3}
l type println
l size println
l at(2) println
l := {"A", "B", "C"}
l println
"" println


# Enhance the XML program to handle attributes: if the first argument is a map (use the curly brackets syntax), add attributes to the XML program. For example:
# book({"author": "Tate"}...) would print <book author="Tate">
"Output 3" println
OperatorTable addAssignOperator(":", "atPutNumber")

EnhancedBuilder := Builder clone
EnhancedBuilder counter := 0
EnhancedBuilder indentation := method("\t" repeated(counter))

EnhancedBuilder forward := method(
    write(indentation, "<", call message name)
    m := call message arguments first
    if(m != nil, attrs := doMessage(m); if(attrs isKindOf(Map), attrs foreach(key, value, write(" ", key, "=", value))))
    writeln(">")
    counter = counter + 1
    call message arguments foreach(
        arg,
        content := self doMessage(arg);
        if (content type == "Sequence", writeln(indentation, content))
    )
    counter = counter - 1
    writeln(indentation, "</", call message name, ">")
)

curlyBrackets := method(
    r := Map clone
    call message arguments foreach(
        arg,
        r doMessage(arg)
    )
    r
)

Map atPutNumber := method(
    self atPut(
        call evalArgAt(0) asMutable removePrefix("\"") removeSuffix("\""),
        call evalArgAt(1)
    )
)

s := "EnhancedBuilder book({\"author\": \"Tate\"}, p(\"Something\"))"
doString(s) println
"" println
