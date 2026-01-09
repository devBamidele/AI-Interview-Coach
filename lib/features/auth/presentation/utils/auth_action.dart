/// Enum to track which authentication action is currently in progress
/// Used to show loading indicators only on the specific button that was pressed
enum AuthAction {
  emailPassword,
  google,
  apple,
  guest,
}
