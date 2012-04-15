open Lwt
open Eliom_pervasives
open HTML5
open Eliom_services
open Eliom_parameters
open Eliom_output.Html5

let main_service =
  register_service ~path:["hello"] ~get_params:unit
    (fun () () -> return (html (head (title (pcdata "helloworld")) [])
                      (body [h1 [pcdata "Hello, World"]])))
