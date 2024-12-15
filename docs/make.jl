using NumericalMethodsLib
using Documenter

DocMeta.setdocmeta!(NumericalMethodsLib, :DocTestSetup, :(using NumericalMethodsLib); recursive=true)

makedocs(;
    modules=[NumericalMethodsLib],
    authors="Git-User-JW <112542731+Git-User-JW@users.noreply.github.com> and contributors",
    sitename="NumericalMethodsLib.jl",
    format=Documenter.HTML(;
        canonical="https://Jonas-Weitzel.github.io/NumericalMethodsLib.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/Jonas-Weitzel/NumericalMethodsLib.jl",
    devbranch="master",
)
