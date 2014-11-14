{shared{
  open Eliom_content
  open Html5.D
  open Lwt
}}

module Hello_app = Eliom_registration.App (
  struct
    let application_name = "hello"
  end)

let main_service =
  Hello_app.register_service
    ~path:[]
    ~get_params:Eliom_parameter.unit
    (fun () () ->
       Pages.main "Hello world" [h2 [pcdata "Hello, world!"]]
       |> Lwt.return)
