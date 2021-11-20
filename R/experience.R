library(dplyr)
library(glue)

details <- list(
  thesis = "My cool thesis",
  advisor = "My advisor"
)

my_entry <- tibble::tribble(
  ~a, ~b, ~c, ~d, ~e,
  "1998", "potato adventure", "big Jones", "Canada", details,
  "1950", "my awesome adventurino", "Indiana Jones", "Canaduh", details
)


# Create an entry for the education section
entry_html <- function(
  when,
  what,
  with,
  where,
  details = NULL
) {
  paste(
    glue('
      <div class="cf mv3">
        <div class="fl w-100 w-third-ns">
          <p class="mb0 mv2-ns">{when}</p>
        </div>
        <div class="fl w-100 w-two-thirds-ns pl2-ns">
          <p class="mv2 b">{what}</p>
          <p class="di">{with}</p>
          <p class="di">&middot</p>
          <p class="di">{where}</p>
  '),
  if (!is.null(details)) {
    glue(
      '<!-- Bullet points -->
      <ul class="cf pl3 mv2">
      ',
      paste(
        glue('
            <li class="fl w-100 mv1">
              <p class="fl w-100 w-30-ns mv0">{names(unlist(details))}</p>
              <p class="fl w-100 w-70-ns mv0">{unlist(details)}</p>
            </li>
        '),
        collapse = "\n"
      ),
      '</ul>'
    )
  },
  glue('
        </div>
      </div>
  '),
  collapse = "\n"
  )
}

entry <- function(
  .data,
  when,
  what,
  with,
  where,
  details = NULL
) {
  .data %>%
    rowwise() %>%
    mutate(html = entry_html({{when}}, {{what}}, {{with}}, {{where}}, {{details}})) %>%
    pull(html) %>%
    paste(collapse = "\n")
}

section <- function(
  .data,
  section,
  when,
  what,
  with,
  where,
  details = NULL
) {
  paste(
    glue('
      <section class="bt mb4">
        <header class="w-100">
          <h5 class="f4 fw7 tracked ttu lh-title mv3">{section}</h5>
        </header>
    '),
    entry(
      .data,
      {{when}},
      {{what}},
      {{with}},
      {{where}},
      {{details}}
    ),
    glue('
      </section>
    '),
    collapse = "\n"
  ) %>%
  htmltools::HTML()
}

my_entry %>%
  section("mehducation", a, b, c, d, e)

glue('
<section class="bt mb4">
  <header class="w-100">
    <h5 class="f4 fw7 tracked ttu lh-title mv3">{section}</h5>
  </header>
  <!-- Item 1 -->
  <div class="cf">
    <div class="fl w-100 w-third-ns">
      <p class="mb0 mv2-ns">{when}</p>
    </div>
    <div class="fl w-100 w-two-thirds-ns pl2-ns">
      <p class="mt2 mb2 b">{what}</p>
      <p class="di">{with}</p>
      <p class="di">&middot</p>
      <p class="di">{where}</p>
      <!-- Bullet points -->
      <ul class="cf pl3 mv2">
        <li class="fl w-100 pv2">
          <p class="fl w-100 w-30-ns mv0">Thesis title:</p>
          <p class="fl w-100 w-70-ns mv0">Individual differences in EEG connectomes</p>
        </li>
        <li class="fl w-100 pv2">
          <p class="fl w-100 w-30-ns mv0">Advisor:</p>
          <p class="fl w-100 w-70-ns mv0">Dr. Andrea Protzner</p>
        </li>
      </ul>
    </div>
  </div>
</section>
')
