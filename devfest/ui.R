library(shiny)
library(shinydashboard)

dashboardPage(skin = "black",
    dashboardHeader(title = "Hola devfest!",
        dropdownMenu(type = "messages",
            messageItem(
                from = "Noelia",
                message = "devfest"),
            messageItem(
                from = "Otro usuario",
                message = "Pal' mundo",
                icon = icon("question"),
                time = "17/OCT/2020")),
        dropdownMenu(type = "notifications",
                     notificationItem("Todo ok 😃", status = "success"),
                     notificationItem("Aunque cuidado!", status = "warning")),
        dropdownMenu(type = "task",
                     taskItem(text = "Tu tarea princial",
                              value = 40))
    ),
    dashboardSidebar(sidebarMenu(
        menuItem("Resumen", 
                 tabName = "resumen", 
                 icon = icon("dashboard")),
        menuItem("Saludo", tabName = "saludo", icon = icon("address-card")),
        menuItem("devfest", badgeLabel = "new", badgeColor = "green",
                 href = "https://devfestspain.com/"),
        menuItem("About",
                 icon = icon("rocket"),
                 menuSubItem("Consulta shiny",
                             href = "https://shiny.rstudio.com")),
        menuItem("Layouts",
                 menuSubItem("Filas",
                             tabName = "filas"))
    )),
    dashboardBody(tabItems(
        tabItem(tabName = "resumen",
                box(title = "Selección", 
                    solidHeader = TRUE,
                    status = "warning",
                    textOutput("output_escribir")),
                box(title = "Visualización", 
                    background = "navy",
                    collapsible = TRUE,
                    solidHeader = TRUE,
                    status = "success",
                    "Vamos a visualizar algo...", 
                    br(), 
                    "... a ver qué te parece!",
                    textInput("input_escribir", "Escribe un título")
                )
        ),
        tabItem(tabName = "saludo",
            h2("Hola 👩‍💻👨‍💻👋🤪🤗")
        ),
        tabItem(tabName = "filas",
            h2("Layout por filas"),
            fluidRow(
                box(title = "Caja1-Fila1", width = 4),
                box(title = "Caja2-Fila1", width = 4),
                box(title = "Caja3-Fila1", width = 4)
            ),
            fluidRow(
                box(title = "Caja1-Fila2"),
                box(title = "Caja2-Fila2")
            )
        )
        
    ))
)
