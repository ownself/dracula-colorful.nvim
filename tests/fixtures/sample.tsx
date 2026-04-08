type PaletteCardProps = {
  title: string;
  accentColor?: string;
};

export function PaletteCard({ title, accentColor = "#BD93F9" }: PaletteCardProps) {
  const style = { borderColor: accentColor };

  return (
    <section className="palette-card" style={style}>
      <h2>{title}</h2>
      <button data-accent={accentColor}>Apply</button>
    </section>
  );
}
