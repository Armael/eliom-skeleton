open Eliom_content.Html5.D

let uri s =
  uri_of_string (fun () -> s)

let main t content =
  html (head (title (pcdata t)) [
      meta ~a:[a_charset "utf-8"] ();
      link ~rel:[`Stylesheet] ~href:(uri "main.css") ();
    ])
    (body content)
