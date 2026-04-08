pub struct ThemeToken<TValue> {
    pub name: String,
    pub value: TValue,
}

impl<TValue> ThemeToken<TValue> {
    pub const DEFAULT_ACCENT: &'static str = "#BD93F9";

    pub fn new(name: String, value: TValue) -> Self {
        Self { name, value }
    }
}

pub fn render_token(name: &str) -> String {
    let token = ThemeToken::new(name.to_owned(), ThemeToken::<String>::DEFAULT_ACCENT.to_owned());
    format!("{}", token.value)
}
