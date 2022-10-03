HTMLOUTPUT="build/htmldoc/StarLasuOverview.html"
PDFOUTPUT="build/pdfdoc/StarLasuOverview.pdf"

mkdir -p build/htmldoc
mkdir -p build/pdfdoc

cp -R css build/htmldoc

cat documentation/README.md documentation/usecases/building-parser.md documentation/usecases/building-transpiler.md documentation/usecases/building-codegenerator.md documentation/ast_definition.md documentation/position.md documentation/origin_and_destination.md documentation/traversing.md documentation/transformations.md documentation/debug_print_format.md documentation/serialization.md documentation/naming.md documentation/symbol_resolution.md documentation/typesystem.md documentation/code_generation.md documentation/language_module.md documentation/ast_common_elements.md documentation/cli_tools.md documentation/parsetree_to_ast.md documentation/validation.md documentation/testing.md documentation/emf.md documentation/playground.md documentation/parsers-cross-platform.md > build/source.md

sed 's/https:\/\/github.com\/Strumenta\/StarLasu\/blob\/main\/documentation\/usecases\///g' build/source.md > build/source.md
sed 's/https:\/\/github.com\/Strumenta\/StarLasu\/blob\/main\/documentation\///g' build/source.md > build/source.md
sed 's/building-parser.md/#building-a-parser/g' build/source.md > build/source.md
sed 's/building-transpiler.md/#building-a-transpiler/g' build/source.md > build/source.md
sed 's/building-codegenerator.md/#building-a-code-generator/g' build/source.md > build/source.md
sed 's/ast_definition.md/#ast-definition/g' build/source.md > build/source.md
sed 's/position.md/#position/g' build/source.md > build/source.md
sed 's/origin_and_destination.md/#origin-and-destination/g' build/source.md > build/source.md
sed 's/traversing.md/#traversing-the-ast/g' build/source.md > build/source.md
sed 's/transformations.md/#transforming-asts/g' build/source.md > build/source.md
sed 's/debug_print_format.md/#debug-print-format/g' build/source.md > build/source.md
sed 's/serialization.md/#serialization/g' build/source.md > build/source.md
sed 's/naming.md/#naming/g' build/source.md > build/source.md
sed 's/symbol_resolution.md/#symbol-resolution/g' build/source.md > build/source.md
sed 's/typesystem.md/#typesystem/g' build/source.md > build/source.md
sed 's/code_generation.md/#code-generation/g' build/source.md > build/source.md
sed 's/language_module.md/#language-module/g' build/source.md > build/source.md
sed 's/ast_common_elements.md/#ast-common-elements/g' build/source.md > build/source.md
sed 's/cli_tools.md/#command-line-tools/g' build/source.md > build/source.md
sed 's/parsetree_to_ast.md/#parse-tree-to-ast-mapping/g' build/source.md > build/source.md
sed 's/validation.md/#validation/g' build/source.md > build/source.md
sed 's/testing.md/#testing/g' build/source.md > build/source.md
sed 's/emf.md/#emf/g' build/source.md > build/source.md
sed 's/playground.md/#strumenta-playground/g' build/source.md > build/source.md
sed 's/parsers-cross-platform.md/#cross-platform-parsers/g' build/source.md > build/source.md

pandoc -c css/documentation.css -s build/source.md --metadata pagetitle="StarLasu Overview" -o $HTMLOUTPUT

pandoc -c css/documentation.css -H configuration/listings-setup.tex --variable colorlinks=true build/source.md --listings  --metadata pagetitle="StarLasu Overview" -o $PDFOUTPUT
 
          

              
        
       
      
