# GitHub Flavored Markdown (GFM)
GitHub.com uses its own version of the Markdown syntax that provides an additional set of useful features, many of which make it easier to work with content on GitHub.com.

Note that some features of GitHub Flavored Markdown are only available in the descriptions and comments of Issues and Pull Requests. These include @mentions as well as references to SHA-1 hashes, Issues, and Pull Requests. Task Lists are also available in Gist comments and in Gist Markdown files.

## Syntax highlighting
For a list of support syntax languages, please see the [linguest YAML file](https://github.com/github/linguist/blob/master/lib/linguist/languages.yml)

Here's an example of how you can use syntax highlighting with GitHub Flavored Markdown:

~~~ markdown
```javascript
function fancyAlert(arg) {
  if(arg) {
    $.facebox({div:'#foo'})
  }
}
```
~~~

You can also simply indent your code by four spaces:

    function fancyAlert(arg) {
      if(arg) {
        $.facebox({div:'#foo'})
      }
    }

Here's an example of Python code without syntax highlighting:

```
def foo():
    if not bar:
        return True
```

## Task Lists

```
- [x] @mentions, #refs, [links](), **formatting**, and <del>tags</del> supported
- [x] list syntax required (any unordered or ordered list supported)
- [x] this is a complete item
- [ ] this is an incomplete item
```

- [x] @mentions, #refs, [links](), **formatting**, and <del>tags</del> supported
- [x] list syntax required (any unordered or ordered list supported)
- [x] this is a complete item
- [ ] this is an incomplete item

## Tables

You can create tables by assembling a list of words and dividing them with hyphens `-` (for the first row), and then separating each column with a pipe `|`:

```
First Header | Second Header
------------ | -------------
Content from cell 1 | Content from cell 2
Content in the first column | Content in the second column
```

Would become:

First Header | Second Header
------------ | -------------
Content from cell 1 | Content from cell 2
Content in the first column | Content in the second column

```
Colons can be used to align columns.

| Tables        | Are           | Cool  | FoShur |
| ------------- |:-------------:| -----:|:-------|
| col 3 is      | right-aligned | $1600 |    23  |
| col 2 is      | centered      |   $12 |      45|
| zebra stripes | are neat      |    $1 |  12    |
| col 4 is      | left-aligned  | $2    | 1475   |

The outer pipes (|) are optional, and you don't need to make the raw Markdown line up prettily. You can also use inline Markdown.

Markdown | Less | Pretty
--- | --- | ---
*Still* | `renders` | **nicely**
1 | 2 | 3
```

Colons can be used to align columns.

| Tables        | Are           | Cool  | FoShur |
| ------------- |:-------------:| -----:|:-------|
| col 3 is      | right-aligned | $1600 |    23  |
| col 2 is      | centered      |   $12 |      45|
| zebra stripes | are neat      |    $1 |  12    |
| col 4 is      | left-aligned  | $2    | 1475   |

The outer pipes (|) are optional, and you don't need to make the raw Markdown line up prettily. You can also use inline Markdown.

Markdown | Less | Pretty
--- | --- | ---
*Still* | `renders` | **nicely**
1 | 2 | 3

## Username @mentions

Typing an `@` symbol, followed by a username, will notify that person to come and view the comment. This is called an “@mention”, because you're mentioning the individual. You can also @mention teams within an organization.

## Strikethrough

Any word wrapped with two tildes (like `~~this~~`) will appear crossed out, like ~~this~~.

## Emoji

GitHub supports emoji! :sparkles: :camel: :boom:

To see a list of every image we support, check out the [Emoji Cheat Sheet](http://www.emoji-cheat-sheet.com/).
