use yew::prelude::*;

#[function_component(Title)]
pub fn title_bar() -> Html {
    html! {
      <nav>
        <h1>{"Test Title"}</h1>
        <a href="/">{"Index"}</a>
        <a href="/hello-server">{"Hello Server"}</a>
      </nav>
    }
}
