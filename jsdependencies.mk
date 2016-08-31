
# DO NOT DELETE THIS LINE -- js-makedepend depends on it.

# amd dependencies
src/index.js: \
	src/parse/stategenny-parser.js \
	src/render/ast2dot.js \
	src/render/ast2stategenny.js

# cjs dependencies
src/cli/actions.js: \
	src/index.js

src/index.js: \
	src/parse/stategenny-parser.js \
	src/render/ast2dot.js \
	src/render/ast2stategenny.js

src/cli/index.js: \
	package.json \
	src/cli/actions.js \
	src/cli/normalizations.js \
	src/cli/validations.js

src/cli/validations.js: \
	src/index.js

# amd dependencies
# cjs dependencies
test/cli/actions.spec.js: \
	src/cli/actions.js

src/cli/actions.js: \
	src/index.js

src/index.js: \
	src/parse/stategenny-parser.js \
	src/render/ast2dot.js \
	src/render/ast2stategenny.js

test/cli/normalizations.spec.js: \
	src/cli/normalizations.js

test/cli/validations.spec.js: \
	src/cli/validations.js

src/cli/validations.js: \
	src/index.js

test/parse/stategenny-parser.spec.js: \
	src/parse/stategenny-parser.js \
	test/parse/00-no-transitions.json \
	test/parse/01-transitions-only.json \
	test/parse/02-comments.json \
	test/parse/10-no-transitions-errors.json \
	test/parse/11-transition-errors.json

test/render/ast2stategenny.spec.js: \
	src/parse/stategenny-parser.js \
	src/render/ast2stategenny.js \
	test/parse/00-no-transitions.json \
	test/parse/01-transitions-only.json

