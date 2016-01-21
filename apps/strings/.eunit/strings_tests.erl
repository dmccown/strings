-module(strings_tests).

-compile([export_all]).

-include_lib("eunit/include/eunit.hrl").

string_concat_test() ->
  First = "con",
  Second = "cat",
  ?assertEqual(strings:string_concat(First,Second), "concat").

string_concat1_test() ->
  Second = "con",
  First = "cat",
  ?assertEqual(strings:string_concat(First,Second), "catcon").

string_concat2_test() ->
  First = con,
  Second = "cat",
  ?assertEqual(strings:string_concat(First,Second), "concat").

string_concat3_test() ->
  First = "con",
  Second = cat,
  ?assertEqual(strings:string_concat(First,Second), "concat").

string_concat4_test() ->
  First = con,
  Second = cat,
  ?assertEqual(strings:string_concat(First,Second), "concat").

  % what happens when you try to concatonate a tuple?
