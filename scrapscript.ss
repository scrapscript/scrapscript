yard

? script.lex "a . a = 1" |> result.then script.parse |> result.then flat.infer |> result.then eval |> is (ok todo)
? script.lex "a . a = 1" |> result.then script.parse |> result.then flat.infer |> is (ok int)
? script.lex "a . a = 1" |> result.then script.parse |> is (ok todo)
? script.lex "a . a = 1" |> is (ok [#var "a", #op ".", #var "a", #op "=", #int 1])

; {flat,script,yard,book} = yard

; yard =

  { flat = 

    { type

    , eval : dict bytes flat -> flat -> result text flat =
        todo

    , infer : flat -> result text type =
        todo

    }

    ? ((dict [~ff'11]) |> env-get ~ff "") == ok '11
    ? ((dict [~ff'11]) |> env-get ~ee "") == no ""

    ; env-get : dict bytes flat -> bytes -> result text flat =
        env -> var -> err ->
          env |> dict/get var |> result/from-maybe err

  , script = 

    { token

    , lex : text -> result text (list token) =
        todo

    , parse : list token -> result text flat =
        todo

    }

  , yard =

    {

    }

  , book =

    {

    }

  , result =

    {

    }

  }

; is = a -> b -> a == b

; ok = result::ok ()
; no = result::no ()
; result : #ok #no

; token :
    #var text
    #int int
    #text text

; int = type::int ()
; text = type::text ()
; type :
    #int
    #text

