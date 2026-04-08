export class PaletteRole {
  static readonly DEFAULT_COLOR = "#BD93F9";

  constructor(
    private readonly fieldValue: string,
    public mutableCount: number,
  ) {}

  formatValue(input: string): string {
    const localValue = `${input}:${this.fieldValue}:${PaletteRole.DEFAULT_COLOR}`;
    return localValue.toUpperCase();
  }
}
