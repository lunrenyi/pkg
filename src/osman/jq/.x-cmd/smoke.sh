pkg:info "jq"

jq_test(){
    local arch
    arch="$(___x_cmd_os arch)"
    local osname
    osname="$(___x_cmd_os name)"

    x assert stdout 'eval $___X_CMD_PKG_INSTALL_PATH/$name/$version/jq.${osname}.${arch} -h' <<A
jq - commandline JSON processor [version 1.6]

Usage:  /home/mnnna/.x-cmd/.tmp/pkg/installed/jq/1.6-dirty/jq.linux.x64 [options] <jq filter> [file...]
        /home/mnnna/.x-cmd/.tmp/pkg/installed/jq/1.6-dirty/jq.linux.x64 [options] --args <jq filter> [strings...]
        /home/mnnna/.x-cmd/.tmp/pkg/installed/jq/1.6-dirty/jq.linux.x64 [options] --jsonargs <jq filter> [JSON_TEXTS...]

jq is a tool for processing JSON inputs, applying the given filter to
its JSON text inputs and producing the filter's results as JSON on
standard output.

The simplest filter is ., which copies jq's input to its output
unmodified (except for formatting, but note that IEEE754 is used
for number representation internally, with all that that implies).

For more advanced filters see the jq(1) manpage ("man jq")
and/or https://stedolan.github.io/jq

Example:

        $ echo '{"foo": 0}' | jq .
        {
                "foo": 0
        }

Some of the options include:
  -c               compact instead of pretty-printed output;
  -n               use `null` as the single input value;
  -e               set the exit status code based on the output;
  -s               read (slurp) all inputs into an array; apply filter to it;
  -r               output raw strings, not JSON texts;
  -R               read raw strings, not JSON texts;
  -C               colorize JSON;
  -M               monochrome (don't colorize JSON);
  -S               sort keys of objects on output;
  --tab            use tabs for indentation;
  --arg a v        set variable $a to value <v>;
  --argjson a v    set variable $a to JSON value <v>;
  --slurpfile a f  set variable $a to an array of JSON texts read from <f>;
  --rawfile a f    set variable $a to a string consisting of the contents of <f>;
  --args           remaining arguments are string arguments, not files;
  --jsonargs       remaining arguments are JSON arguments, not files;
  --               terminates argument processing;

Named arguments are also available as $ARGS.named[], while
positional arguments are available as $ARGS.positional[].

See the manpage for more options.
A
}
jq_test

x pkg uninstall jq