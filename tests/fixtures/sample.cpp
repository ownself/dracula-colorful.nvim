#include <memory>
#include <string>
#include <vector>

namespace dracula::colorful {

template <typename TValue>
class ThemeToken {
public:
  static constexpr const char* DefaultAccent = "#BD93F9";

  ThemeToken(std::string name, TValue value) : name_(std::move(name)), value_(std::move(value)) {}

  const TValue& value() const { return value_; }

private:
  std::string name_;
  TValue value_;
};

}  // namespace dracula::colorful
