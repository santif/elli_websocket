-module(elli_bstr_tests).

-include_lib("eunit/include/eunit.hrl").


case_insensitive_equal_test() ->
    ?assert(elli_bstr:is_equal_ci(<<>>, <<>>)),
    ?assert(elli_bstr:is_equal_ci(<<"abc">>, <<"abc">>)),
    ?assert(elli_bstr:is_equal_ci(<<"123">>, <<"123">>)),

    ?assertNot(elli_bstr:is_equal_ci(<<"abcd">>, <<"abc">>)),
    ?assertNot(elli_bstr:is_equal_ci(<<"1234">>, <<"123">>)),

    ?assert(elli_bstr:is_equal_ci(<<"aBc">>, <<"abc">>)),
    ?assert(elli_bstr:is_equal_ci(<<"123AB">>, <<"123ab">>)),

    ?assertNot(elli_bstr:is_equal_ci(<<"1">>, <<"123ab">>)),
    ?assertNot(elli_bstr:is_equal_ci(<<"">>, <<"123ab">>)),
    ?assertNot(elli_bstr:is_equal_ci(<<"">>, <<" ">>)).


%% Test if to_lower works.
ascii_to_lower_test() ->
    ?assertMatch(<<>>, elli_bstr:to_lower(<<>>)),
    ?assertMatch(<<"abc">>, elli_bstr:to_lower(<<"abc">>)),
    ?assertMatch(<<"abc">>, elli_bstr:to_lower(<<"ABC">>)),
    ?assertMatch(<<"1234567890abcdefghijklmnopqrstuvwxyz!@#$%^&*()">>,
                 elli_bstr:to_lower(<<"1234567890abcdefghijklmnopqrstuvwxyz!@#$%^&*()">>)),
    ?assertMatch(<<"1234567890abcdefghijklmnopqrstuvwxyz!@#$%^&*()">>,
                 elli_bstr:to_lower(<<"1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%^&*()">>)).


trim_test() ->
    ?assertMatch(<<"check">>, elli_bstr:trim(<<"check">>)),
    ?assertMatch(<<"check">>, elli_bstr:trim(<<"   check">>)),
    ?assertMatch(<<"check">>, elli_bstr:trim(<<"   check    ">>)),

    ?assertMatch(<<"">>, elli_bstr:trim(<<"   ">>)),
    ?assertMatch(<<>>, elli_bstr:trim(<<>>)),

    ?assertMatch(<<"">>, elli_bstr:trim(<<"\t\r\n">>)).
