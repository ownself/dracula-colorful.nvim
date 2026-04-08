class PaletteRole:
    DEFAULT_COLOR = "#BD93F9"

    def __init__(self, field_value: str, mutable_count: int) -> None:
        self.field_value = field_value
        self.mutable_count = mutable_count

    def format_value(self, input_value: str) -> str:
        local_value = f"{input_value}:{self.field_value}:{PaletteRole.DEFAULT_COLOR}"
        return local_value.upper()
