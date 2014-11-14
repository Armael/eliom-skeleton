{shared{
  open Eliom_content.Html5.D
  open Eliom_lib.Lwt_ops
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
