

# Module elli_bstr #
* [Description](#description)
* [Data Types](#types)
* [Function Index](#index)
* [Function Details](#functions)

Binary String Helper Functions.

Copyright (c) 2013, Maas-Maarten Zeeman; 2018, elli-lib team

__Authors:__ Maas-Maarten Zeeman ([`mmzeeman@xs4all.nl`](mailto:mmzeeman@xs4all.nl)).

<a name="types"></a>

## Data Types ##




### <a name="type-ascii_char">ascii_char()</a> ###


<pre><code>
ascii_char() = 0..127
</code></pre>

<a name="index"></a>

## Function Index ##


<table width="100%" border="1" cellspacing="0" cellpadding="2" summary="function index"><tr><td valign="top"><a href="#is_equal_ci-2">is_equal_ci/2</a></td><td>Compare two binary values.</td></tr><tr><td valign="top"><a href="#lchr-1">lchr/1</a></td><td>convert character to lowercase.</td></tr><tr><td valign="top"><a href="#to_lower-1">to_lower/1</a></td><td>Convert ascii Bin to lowercase.</td></tr><tr><td valign="top"><a href="#trim-1">trim/1</a></td><td>Remove leading and trailing whitespace.</td></tr><tr><td valign="top"><a href="#trim_left-1">trim_left/1</a></td><td>Remove leading whitespace from Bin.</td></tr><tr><td valign="top"><a href="#trim_right-1">trim_right/1</a></td><td>Remove trailing whitespace from Bin.</td></tr></table>


<a name="functions"></a>

## Function Details ##

<a name="is_equal_ci-2"></a>

### is_equal_ci/2 ###

<pre><code>
is_equal_ci(Bin::binary(), Bin2::binary()) -&gt; boolean()
</code></pre>
<br />

Compare two binary values.
Return true iff they are equal by a caseless compare.

<a name="lchr-1"></a>

### lchr/1 ###

<pre><code>
lchr(Chr::<a href="#type-ascii_char">ascii_char()</a>) -&gt; <a href="#type-ascii_char">ascii_char()</a>
</code></pre>
<br />

convert character to lowercase.

<a name="to_lower-1"></a>

### to_lower/1 ###

<pre><code>
to_lower(Bin::binary()) -&gt; binary()
</code></pre>
<br />

Convert ascii Bin to lowercase

<a name="trim-1"></a>

### trim/1 ###

<pre><code>
trim(Bin::binary()) -&gt; binary()
</code></pre>
<br />

Remove leading and trailing whitespace.

<a name="trim_left-1"></a>

### trim_left/1 ###

<pre><code>
trim_left(Bin::binary()) -&gt; binary()
</code></pre>
<br />

Remove leading whitespace from Bin

<a name="trim_right-1"></a>

### trim_right/1 ###

<pre><code>
trim_right(Bin::binary()) -&gt; binary()
</code></pre>
<br />

Remove trailing whitespace from Bin

