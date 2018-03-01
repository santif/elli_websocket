-module(elli_ws_http_tests).

-include_lib("eunit/include/eunit.hrl").


tokens_test() ->
    ?assertMatch([<<"test">>], elli_ws_http:tokens(<<"test">>)),
    ?assertMatch([<<"test">>, <<"bla">>, <<"x">>],
                 elli_ws_http:tokens(<<"test,     bla,x">>)),
    ?assertMatch([<<"test">>, <<"een">>, <<"twee">>],
                 elli_ws_http:tokens([<<"test">>, <<"een">>, <<"twee">>])),
    ?assertMatch([<<"test">>, <<"een">>, <<"twee">>],
                 elli_ws_http:tokens([<<"test,,,">>, <<",,,een,,,">>, <<"twee">>])),
    ?assertMatch([], elli_ws_http:tokens(<<",,,">>)).
