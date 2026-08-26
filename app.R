library(shiny)

hdr <- function(req, name) {
  value <- req[[name]]
  if (is.null(value)) "unset" else value
}

ui <- function(req) {
  fluidPage(
    tags$pre(id = "shiny-creds", hdr(req, "HTTP_SHINY_SERVER_CREDENTIALS")),
    tags$pre(id = "rsc-creds", hdr(req, "HTTP_RSTUDIO_CONNECT_CREDENTIALS"))
  )
}

server <- function(input, output, session) {}

shinyApp(ui, server)
