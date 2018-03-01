

# Module elli_ws_protocol #
* [Description](#description)
* [Data Types](#types)
* [Function Index](#index)
* [Function Details](#functions)

Websocket protocol implementation.

<a name="types"></a>

## Data Types ##




### <a name="type-close_code">close_code()</a> ###


<pre><code>
close_code() = 1000..4999
</code></pre>




### <a name="type-frame">frame()</a> ###


<pre><code>
frame() = close | ping | pong | {text | binary | close | ping | pong, iodata()} | {close, <a href="#type-close_code">close_code()</a>, iodata()}
</code></pre>

<a name="index"></a>

## Function Index ##


<table width="100%" border="1" cellspacing="0" cellpadding="2" summary="function index"><tr><td valign="top"><a href="#upgrade-4">upgrade/4</a></td><td>Upgrade an HTTP request to the Websocket protocol.</td></tr></table>


<a name="functions"></a>

## Function Details ##

<a name="upgrade-4"></a>

### upgrade/4 ###

<pre><code>
upgrade(Req, Env, Handler::module(), HandlerOpts::any()) -&gt; {ok, Req, Env} | {error, 400, Req} | {suspend, module(), atom(), [any()]}
</code></pre>

<ul class="definitions"><li><code>Req = <a href="elli_ws_request_adapter.md#type-req">elli_ws_request_adapter:req()</a></code></li><li><code>Env = list()</code></li></ul>

Upgrade an HTTP request to the Websocket protocol.

You do not need to call this function manually. To upgrade to the Websocket
protocol, you simply need to return _{upgrade, protocol, elli_ws_protocol}_
in your _cowboy_http_handler:init/3_ handler function.

__<font color="red">To do</font>__<br />* <font color="red">Remove when we support only R16B+.</font>

