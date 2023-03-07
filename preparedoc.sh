mkdir -p build/htmldoc
mkdir -p build/pdfdoc

cp -R css build/htmldoc

cat documentation/README.md documentation/usecases/building-parser.md documentation/usecases/building-transpiler.md documentation/usecases/building-codegenerator.md documentation/ast_definition.md documentation/position.md documentation/origin_and_destination.md documentation/traversing.md documentation/transformations.md documentation/debug_print_format.md documentation/serialization.md documentation/naming.md documentation/symbol_resolution.md documentation/typesystem.md documentation/code_generation.md documentation/language_module.md documentation/ast_common_elements.md documentation/cli_tools.md documentation/parsetree_to_ast.md documentation/validation.md documentation/testing.md documentation/emf.md documentation/playground.md documentation/parsers-cross-platform.md > build/source.md

sed 's/https:\/\/github.com\/Strumenta\/StarLasu\/blob\/main\/documentation\/usecases\///g' -i'' build/source.md
sed 's/https:\/\/github.com\/Strumenta\/StarLasu\/blob\/main\/documentation\///g' -i'' build/source.md
sed 's/building-parser.md/#building-a-parser/g' -i'' build/source.md
sed 's/building-transpiler.md/#building-a-transpiler/g' -i'' build/source.md
sed 's/building-codegenerator.md/#building-a-code-generator/g' -i'' build/source.md
sed 's/ast_definition.md/#ast-definition/g' -i'' build/source.md
sed 's/position.md/#position/g' -i'' build/source.md
sed 's/origin_and_destination.md/#origin-and-destination/g' -i'' build/source.md
sed 's/traversing.md/#traversing-the-ast/g' -i'' build/source.md
sed 's/transformations.md/#transforming-asts/g' -i'' build/source.md
sed 's/debug_print_format.md/#debug-print-format/g' -i'' build/source.md
sed 's/serialization.md/#serialization/g' -i'' build/source.md
sed 's/naming.md/#naming/g' -i'' build/source.md
sed 's/symbol_resolution.md/#symbol-resolution/g' -i'' build/source.md
sed 's/typesystem.md/#typesystem/g' -i'' build/source.md
sed 's/code_generation.md/#code-generation/g' -i'' build/source.md
sed 's/language_module.md/#language-module/g' -i'' build/source.md
sed 's/ast_common_elements.md/#ast-common-elements/g' -i'' build/source.md
sed 's/cli_tools.md/#command-line-tools/g' -i'' build/source.md
sed 's/parsetree_to_ast.md/#parse-tree-to-ast-mapping/g' -i'' build/source.md
sed 's/validation.md/#validation/g' -i'' build/source.md
sed 's/testing.md/#testing/g' -i'' build/source.md
sed 's/emf.md/#emf/g' -i'' build/source.md
sed 's/playground.md/#strumenta-playground/g' -i'' build/source.md
sed 's/parsers-cross-platform.md/#cross-platform-parsers/g' -i'' build/source.md

