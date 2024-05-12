local ls = require("luasnip")

return {
  ls.parser.parse_snippet( "pydoc", '"""$1"""' ),
  ls.parser.parse_snippet( "pymdoc", '"""$1\n"""' ),
}
