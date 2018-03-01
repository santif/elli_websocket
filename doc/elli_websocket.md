

# Module elli_websocket #
* [Description](#description)
* [Data Types](#types)
* [Function Index](#index)
* [Function Details](#functions)

Elli Websocket Handler.

Copyright (c) 2012-2013, Maas-Maarten Zeeman; 2018, elli-lib team

__Authors:__ Maas-Maarten Zeeman ([`mmzeeman@xs4all.nl`](mailto:mmzeeman@xs4all.nl)).

<a name="types"></a>

## Data Types ##




### <a name="type-event">event()</a> ###


<pre><code>
event() = websocket_open | websocket_close | websocket_throw | websocket_error | websocket_exit
</code></pre>




### <a name="type-message">message()</a> ###


<pre><code>
message() = {text, <a href="#type-payload">payload()</a>} | {binary, <a href="#type-payload">payload()</a>} | {ping, <a href="#type-payload">payload()</a>} | {pong, <a href="#type-payload">payload()</a>}
</code></pre>




### <a name="type-payload">payload()</a> ###


<pre><code>
payload() = binary() | iolist()
</code></pre>

<a name="index"></a>

## Function Index ##


<table width="100%" border="1" cellspacing="0" cellpadding="2" summary="function index"><tr><td valign="top"><a href="#upgrade-2">upgrade/2</a></td><td>Upgrade the request to a websocket, will respond with
bad request when something is wrong.</td></tr></table>


<a name="functions"></a>

## Function Details ##

<a name="upgrade-2"></a>

### upgrade/2 ###

<pre><code>
upgrade(Req::<a href="http://raw.github.com/elli-lib/elli/develop/doc/elli.md#type-req">elli:req()</a>, Args::list()) -&gt; ok
</code></pre>
<br />

Upgrade the request to a websocket, will respond with
bad request when something is wrong.

