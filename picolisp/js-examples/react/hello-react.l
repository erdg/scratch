(load "@lib/form.l" "@lib/http.l" "@lib/xhtml.l")

(push1 '*JS (allow "@lib/react-0.12.2/build/react.js"))
(push1 '*JS (allow "@lib/react-0.12.2/build/JSXTransformer.js"))


(de main ()
   (app)
   (action
      (html 0 "Hello React" "@lib.css" NIL
         (form NIL
            (<div> '(id . example) NIL)
            (jsx
               "React.render(
                  <h1>Hello, react!</h1>,
                  document.getElementById('example')
                );" )
            (gui '(+OnClick +Button)
               "console.log('hello')"
               "click me" ) ) ) ) )

(server 8080 "!main")
