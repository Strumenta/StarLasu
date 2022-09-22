HTMLOUTPUT="build/StarLasuOverview.html"

mkdir -p build

cp -R css build
pandoc -c css/documentation.css -s documentation/README.md documentation/usecases/building-parser.md documentation/usecases/building-transpiler.md documentation/usecases/building-codegenerator.md documentation/ast_definition.md documentation/position.md documentation/origin_and_destination.md documentation/traversing.md documentation/transformations.md documentation/debug_print_format.md documentation/serialization.md documentation/naming.md documentation/symbol_resolution.md documentation/typesystem.md documentation/code_generation.md documentation/language_module.md documentation/ast_common_elements.md documentation/cli_tools.md documentation/parsetree_to_ast.md documentation/validation.md documentation/testing.md documentation/emf.md documentation/playground.md documentation/parsers-cross-platform.md --metadata pagetitle="StarLasu Overview" -o $HTMLOUTPUT

pandoc --pdf-engine=xelatex $HTMLOUTPUT -o build/StarLasuOverview.pdf
 
          

              
        
       
      
