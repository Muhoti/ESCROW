# Reusable Components Library

This folder contains all the reusable components for the ESCROW mobile app. These components are designed to maintain consistency across the entire application and reduce code duplication.

## 📁 Component Structure

```
components/
├── components.dart          # Main export file
├── custom_text.dart         # Text components and styles
├── custom_text_field.dart   # Input field components
├── custom_app_bar.dart      # App bar component
├── custom_elevated_button.dart    # Primary button component
├── custom_outlined_button.dart    # Secondary button component
├── custom_circle_avatar.dart      # Avatar with icon component
├── decorative_dot.dart            # Decorative dot component
├── hero_banner.dart              # Hero image with overlays
├── balance_card.dart             # Balance display card
├── action_button.dart            # Action button component
├── history_card.dart             # Transaction history card
├── transaction_card.dart         # Transaction display card
├── filter_chips.dart             # Filter selection chips
├── wallet_action_button.dart     # Wallet-specific action button
├── funds_card.dart               # Funds display card
└── README.md                     # This documentation
```

## 🎯 Components Overview

### Text Components (`custom_text.dart`)

- **CustomText**: Base text widget with tap functionality
- **HeadingText**: Large heading text (26px, bold)
- **BodyText**: Regular body text (16px)
- **LinkText**: Clickable link text with underline
- **AmountText**: Bold amount text (22px)
- **AppTextStyles**: Predefined text styles for consistency

### Input Components (`custom_text_field.dart`)

- **CustomTextField**: Full-featured text input with password support
- Features: Password visibility toggle, validation, custom styling

### Navigation Components (`custom_app_bar.dart`)

- **CustomAppBar**: Consistent app bar with back button support
- Features: Customizable title, actions, colors, back navigation

### Button Components

- **CustomElevatedButton**: Primary action button
- **CustomOutlinedButton**: Secondary action button
- **ActionButton**: Multi-purpose action button with selection state
- **WalletActionButton**: Wallet-specific action button

### Card Components

- **BalanceCard**: Display balance information
- **HistoryCard**: Transaction history item
- **TransactionCard**: Transaction details with role indicator
- **FundsCard**: Funds information display

### UI Components

- **CustomCircleAvatar**: Avatar with icon
- **DecorativeDot**: Small decorative circle
- **HeroBanner**: Image with overlays and decorations
- **FilterChips**: Filter selection interface

## 🚀 Usage Examples

### Basic Import

```dart
import '../components/components.dart';
```

### Text Components

```dart
// Heading
const HeadingText('Welcome to ESCROW');

// Body text
const BodyText('Your secure escrow platform');

// Link
LinkText('Forgot password?', onTap: () => print('Tapped'));

// Amount
const AmountText('KSh. 157,325.67');
```

### Input Fields

```dart
const CustomTextField(
  labelText: 'Email',
  keyboardType: TextInputType.emailAddress,
);

const CustomTextField(
  labelText: 'Password',
  isPassword: true,
);
```

### Buttons

```dart
CustomElevatedButton(
  text: 'Login',
  onPressed: () => print('Login pressed'),
);

ActionButton(
  label: 'Create Transaction',
  isSelected: true,
  onPressed: () => print('Action pressed'),
);
```

### Cards

```dart
BalanceCard(
  title: 'Available Balance',
  amount: 'KSh. 107,921',
  icon: Icons.account_balance_wallet,
);

HistoryCard(
  leading: CircleAvatar(child: Text('ESC')),
  title: 'ESC-ESCTR010953122025',
  subtitle: '10 minutes ago',
  amount: 'KSh. 10,400',
  status: 'Active',
  statusColor: Colors.blue,
);
```

### App Bar

```dart
CustomAppBar(
  title: 'Transactions',
  onBackPressed: () => Navigator.pop(context),
  actions: [
    IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
  ],
);
```

## 🎨 Styling Consistency

All components use consistent:

- **Colors**: Blue primary (#007AFF), consistent grays
- **Border Radius**: 8px for buttons, 12px for cards, 16px for large cards
- **Padding**: 16px horizontal, 18px vertical for buttons
- **Typography**: Consistent font sizes and weights
- **Shadows**: Subtle shadows for depth

## 🔧 Customization

Most components accept customization parameters:

- Colors (backgroundColor, textColor, etc.)
- Sizes (fontSize, padding, etc.)
- Callbacks (onPressed, onTap, etc.)
- Icons and images

## 📱 Refactored Screens

The following screens have been refactored to use these components:

- ✅ `landing_page.dart`
- ✅ `home_screen.dart`
- ✅ `transactions_screen.dart`
- ✅ `wallet_screen.dart`
- ✅ `login_page.dart`
- ✅ `createaccount_personal.dart`

## 🎯 Benefits

1. **Consistency**: Uniform look and feel across the app
2. **Maintainability**: Changes in one place affect all instances
3. **Reusability**: Components can be used in multiple screens
4. **Clean Code**: Reduced code duplication and cleaner screen files
5. **Easy Updates**: Centralized styling and behavior

## 🔄 Next Steps

To complete the refactoring:

1. Apply components to remaining screens
2. Create additional components as needed
3. Add theme support for dark mode
4. Add animation support to components
5. Create component documentation with examples
