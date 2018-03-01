%% @author Maas-Maarten Zeeman <mmzeeman@xs4all.nl>
%% @copyright 2013, Maas-Maarten Zeeman; 2018, elli-lib team
%%
%% @doc Elli WebSocket Handler Behaviour
%% @end
%%
%% Copyright 2013 Maas-Maarten Zeeman
%% Copyright 2018 elli-lib team
%%
%% Licensed under the Apache License, Version 2.0 (the "License");
%% you may not use this file except in compliance with the License.
%% You may obtain a copy of the License at
%%
%%     http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing, software
%% distributed under the License is distributed on an "AS IS" BASIS,
%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%% See the License for the specific language governing permissions and
%% limitations under the License.

-module(elli_websocket_handler).

-include_lib("elli_websocket.hrl").


-callback websocket_init(Req :: elli:req(), Args :: any()) ->
    {ok, Headers, State} |
    {ok, Headers, hibernate, State} |
    {ok, Headers, Timeout, State} |
    {ok, Headers, hibernate, Timeout, State} |
    {shutdown, Headers} when
      Headers :: elli:headers(),
      State   :: any(),
      Timeout :: non_neg_integer().


-callback websocket_handle(Req, Message, State) ->
    {reply, ReplyMessage, ReplyState} | {ok, State} when
      Req          :: elli:req(),
      Message      :: elli_websocket:message(),
      State        :: any(),
      ReplyState   :: any(),
      ReplyMessage :: elli_websocket:message().


-callback websocket_info(Req, Message, State) -> {ok, ReplyState} when
      Req        :: elli:req(),
      Message    :: any(),
      State      :: any(),
      ReplyState :: any().


-callback websocket_handle_event(Event, Args, State) -> ok when
      Event :: elli_websocket:event(),
      Args  :: list(),
      State :: any().
