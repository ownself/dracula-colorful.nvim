using System;
using System.Collections.Generic;

namespace DraculaColorful;

public sealed record ThemeToken<TValue>(string Name, TValue Value);

public class ThemeRenderer
{
    private static readonly string DefaultAccent = "#BD93F9";
    private readonly List<ThemeToken<string>> _tokens = new();

    public string Accent { get; init; } = DefaultAccent;

    [Obsolete]
    public string RenderToken(string name, Func<string, string> formatter)
    {
        var token = new ThemeToken<string>(name, Accent);
        _tokens.Add(token);
        return formatter(token.Value);
    }
}
