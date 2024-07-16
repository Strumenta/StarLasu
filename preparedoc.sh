mkdir -p build/htmldoc
mkdir -p build/pdfdoc

cp -R css build/htmldoc

cat documentation/README.md documentation/usecases/building-parser.md documentation/usecases/building-transpiler.md documentation/usecases/building-codegenerator.md documentation/ast_definition.md documentation/position.md documentation/origin_and_destination.md documentation/traversing.md documentation/transformations.md documentation/debug_print_format.md documentation/serialization.md documentation/naming.md documentation/symbol_resolution.md documentation/typesystem.md documentation/code_generation.md documentation/language_module.md documentation/ast_common_elements.md documentation/cli_tools.md documentation/parsetree_to_ast.md documentation/validation.md documentation/testing.md documentation/emf.md documentation/playground.md documentation/parsers-cross-platform.md > build/source.md

echo "PREPARE DOC - INITIAL SOURCE CREATED"

gsed -i 's/https:\/\/github.com\/Strumenta\/StarLasu\/blob\/main\/documentation\/usecases\///g' build/source.md
gsed -i 's/https:\/\/github.com\/Strumenta\/StarLasu\/blob\/main\/documentation\///g' build/source.md
gsed -i 's/usecases\/building-parser.md/#building-a-parser/g' build/source.md
gsed -i 's/usecases\/building-transpiler.md/#building-a-transpiler/g' build/source.md
gsed -i 's/usecases\/building-codegenerator.md/#building-a-code-generator/g' build/source.md
gsed -i 's/ast_definition.md/#ast-definition/g' build/source.md
gsed -i 's/position.md/#position/g' build/source.md
gsed -i 's/origin_and_destination.md/#origin-and-destination/g' build/source.md
gsed -i 's/traversing.md/#traversing-the-ast/g' build/source.md
gsed -i 's/transformations.md/#transforming-asts/g' build/source.md
gsed -i 's/debug_print_format.md/#debug-print-format/g' build/source.md
gsed -i 's/serialization.md/#serialization/g' build/source.md
gsed -i 's/naming.md/#naming/g' build/source.md
gsed -i 's/symbol_resolution.md/#symbol-resolution/g' build/source.md
gsed -i 's/typesystem.md/#typesystem/g' build/source.md
gsed -i 's/code_generation.md/#code-generation/g' build/source.md
gsed -i 's/language_module.md/#language-module/g' build/source.md
gsed -i 's/ast_common_elements.md/#ast-common-elements/g' build/source.md
gsed -i 's/cli_tools.md/#command-line-tools/g' build/source.md
gsed -i 's/parsetree_to_ast.md/#parse-tree-to-ast-mapping/g' build/source.md
gsed -i 's/validation.md/#validation/g' build/source.md
gsed -i 's/testing.md/#testing/g' build/source.md
gsed -i 's/emf.md/#emf/g' build/source.md
gsed -i 's/playground.md/#strumenta-playground/g' build/source.md
gsed -i 's/parsers-cross-platform.md/#cross-platform-parsers/g' build/source.md

echo "PREPARE DOC - END"
