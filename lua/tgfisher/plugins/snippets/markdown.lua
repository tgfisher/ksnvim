local ls = require("luasnip")

return {
  ls.parser.parse_snippet(
    "### Monday",
    "### Monday $1\n\n### Tuesday $2\n\n### Wednesday $3\n\n"
      .. "### Thursday $4\n\n### Friday $5\n\n### Saturday $6\n\n### Sunday $0"
  ),
  ls.parser.parse_snippet(
    "- [ ]",
    "- [$1] $2"
  ),
}
