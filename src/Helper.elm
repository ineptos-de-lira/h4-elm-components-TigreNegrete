module Helper exposing (..)

import Html
import Html.Attributes


joinWords : String -> String -> String
joinWords word1 word2 =
    word1 ++ word2


isUpperChars : List Char -> List Bool
isUpperChars list =
    List.map Char.isUpper list


evalChars : List Char -> (Char -> Bool) -> List Bool
evalChars list funTrans =
    List.map funTrans list


headers : String -> Html.Html msg
headers text =
    Html.div [] [ Html.h1 [] [ Html.text text ], Html.h2 [] [ Html.text text ], Html.h3 [] [ Html.text text ], Html.h4 [] [ Html.text text ], Html.h5 [] [ Html.text text ], Html.h6 [] [ Html.text text ] ]


hyperlink : String -> String -> Html.Html msg
hyperlink url text =
    Html.a [ Html.Attributes.href url ] [ Html.text text ]
