import 'package:flutter/material.dart';
import '../models/help_models.dart';

/// All help content shown in the app, organized into categories.
final List<HelpCategory> helpCategories = [
  HelpCategory(
    title: 'Getting Started',
    icon: Icons.rocket_launch_outlined,
    color: Colors.indigo,
    topics: [
      HelpTopic(
        title: 'Create your account',
        summary:
            'Set up a new account in under a minute using your email address or a supported social login.',
        icon: Icons.person_add_alt_1_outlined,
        steps: const [
          HelpStep(
            title: 'Open the sign-up screen',
            detail:
                'Tap "Get Started" on the welcome screen, then choose "Create Account".',
          ),
          HelpStep(
            title: 'Enter your details',
            detail:
                'Provide your name, a valid email address, and a password with at least 8 characters.',
          ),
          HelpStep(
            title: 'Verify your email',
            detail:
                'Check your inbox for a verification link and tap it to confirm your address.',
          ),
          HelpStep(
            title: 'Complete your profile',
            detail:
                'Add an optional photo and a short bio so others can recognize you.',
          ),
        ],
        tips: const [
          'Use a password manager to generate and store a strong password.',
          'Didn\'t get the email? Check your spam folder before requesting a new one.',
        ],
      ),
      HelpTopic(
        title: 'Sign in on a new device',
        summary:
            'Access your existing account from a phone, tablet, or computer you haven\'t used before.',
        icon: Icons.devices_outlined,
        steps: const [
          HelpStep(
            title: 'Open the app',
            detail: 'Install the app from your device\'s app store and launch it.',
          ),
          HelpStep(
            title: 'Choose "Sign In"',
            detail: 'Tap "Sign In" instead of "Create Account" on the welcome screen.',
          ),
          HelpStep(
            title: 'Enter your credentials',
            detail: 'Type the email and password you used when you first signed up.',
          ),
          HelpStep(
            title: 'Approve the new device (if asked)',
            detail:
                'If two-factor authentication is on, approve the sign-in from a trusted device or enter the emailed code.',
          ),
        ],
        tips: const [
          'Enable "Remember me" only on personal devices, never on shared computers.',
        ],
      ),
      HelpTopic(
        title: 'Take the quick tour',
        summary:
            'A guided walkthrough of the main screens so you know where everything lives.',
        icon: Icons.explore_outlined,
        steps: const [
          HelpStep(
            title: 'Open Settings',
            detail: 'Tap the gear icon in the top-right corner of the home screen.',
          ),
          HelpStep(
            title: 'Select "Replay Tour"',
            detail: 'Scroll to the "Help & Support" section and tap "Replay Tour".',
          ),
          HelpStep(
            title: 'Follow the highlighted steps',
            detail:
                'Tap "Next" on each highlighted card until you reach the final summary screen.',
          ),
        ],
      ),
    ],
  ),
  HelpCategory(
    title: 'Account & Profile',
    icon: Icons.account_circle_outlined,
    color: Colors.teal,
    topics: [
      HelpTopic(
        title: 'Reset your password',
        summary:
            'Regain access to your account if you\'ve forgotten your password.',
        icon: Icons.lock_reset_outlined,
        steps: const [
          HelpStep(
            title: 'Tap "Forgot password?"',
            detail: 'You\'ll find this link just below the password field on the sign-in screen.',
          ),
          HelpStep(
            title: 'Enter your email',
            detail: 'Type the email address associated with your account and submit the form.',
          ),
          HelpStep(
            title: 'Open the reset link',
            detail: 'Check your email for a reset link, valid for 30 minutes.',
          ),
          HelpStep(
            title: 'Choose a new password',
            detail: 'Enter and confirm a new password, then sign in with it right away.',
          ),
        ],
        tips: const [
          'Reset links expire after 30 minutes — request a new one if yours has lapsed.',
        ],
      ),
      HelpTopic(
        title: 'Update your profile information',
        summary: 'Change your name, photo, bio, or contact details at any time.',
        icon: Icons.edit_outlined,
        steps: const [
          HelpStep(
            title: 'Go to your profile',
            detail: 'Tap your avatar in the top-left corner of any screen.',
          ),
          HelpStep(
            title: 'Tap "Edit Profile"',
            detail: 'This opens an editable version of your profile fields.',
          ),
          HelpStep(
            title: 'Make your changes',
            detail: 'Update the fields you want to change, then tap "Save".',
          ),
        ],
      ),
      HelpTopic(
        title: 'Delete your account',
        summary:
            'Permanently remove your account and associated data. This action cannot be undone.',
        icon: Icons.delete_forever_outlined,
        steps: const [
          HelpStep(
            title: 'Open Settings',
            detail: 'Tap the gear icon, then scroll to "Account".',
          ),
          HelpStep(
            title: 'Select "Delete Account"',
            detail: 'You\'ll be asked to confirm your password before continuing.',
          ),
          HelpStep(
            title: 'Confirm deletion',
            detail:
                'Read the warning carefully, then type "DELETE" to confirm and finish the process.',
          ),
        ],
        tips: const [
          'Export any data you want to keep before deleting your account — this step is irreversible.',
        ],
      ),
    ],
  ),
  HelpCategory(
    title: 'Payments & Billing',
    icon: Icons.credit_card_outlined,
    color: Colors.deepOrange,
    topics: [
      HelpTopic(
        title: 'Add a payment method',
        summary: 'Add a credit card, debit card, or supported wallet to your account.',
        icon: Icons.add_card_outlined,
        steps: const [
          HelpStep(
            title: 'Open "Billing"',
            detail: 'From Settings, tap "Billing", then "Payment Methods".',
          ),
          HelpStep(
            title: 'Tap "Add Payment Method"',
            detail: 'Choose card or wallet, then enter the requested details.',
          ),
          HelpStep(
            title: 'Save and verify',
            detail: 'Tap "Save" — a small verification charge may briefly appear on your statement.',
          ),
        ],
      ),
      HelpTopic(
        title: 'Understand your invoice',
        summary: 'Learn what each line on your monthly invoice means.',
        icon: Icons.receipt_long_outlined,
        steps: const [
          HelpStep(
            title: 'Open "Billing History"',
            detail: 'Go to Settings > Billing > History to see past invoices.',
          ),
          HelpStep(
            title: 'Tap an invoice',
            detail: 'Each invoice breaks down the plan cost, add-ons, taxes, and any prorated charges.',
          ),
          HelpStep(
            title: 'Download a copy',
            detail: 'Tap the download icon to save a PDF copy for your records.',
          ),
        ],
      ),
      HelpTopic(
        title: 'Cancel or change your subscription',
        summary: 'Upgrade, downgrade, or cancel your current plan.',
        icon: Icons.autorenew_outlined,
        steps: const [
          HelpStep(
            title: 'Open "Manage Subscription"',
            detail: 'Go to Settings > Billing > Manage Subscription.',
          ),
          HelpStep(
            title: 'Choose a new plan or cancel',
            detail: 'Select a different plan to change instantly, or tap "Cancel Plan" to stop renewal.',
          ),
          HelpStep(
            title: 'Confirm the change',
            detail: 'Review the effective date and confirm — changes apply at the next billing cycle.',
          ),
        ],
        tips: const [
          'Cancelling keeps your access until the end of the current billing period.',
        ],
      ),
    ],
  ),
  HelpCategory(
    title: 'Troubleshooting',
    icon: Icons.build_outlined,
    color: Colors.brown,
    topics: [
      HelpTopic(
        title: 'The app won\'t open or keeps crashing',
        summary: 'Fix the most common causes of startup crashes.',
        icon: Icons.report_gmailerrorred_outlined,
        steps: const [
          HelpStep(
            title: 'Restart your device',
            detail: 'A simple restart clears temporary memory issues that can cause crashes.',
          ),
          HelpStep(
            title: 'Update the app',
            detail: 'Open your app store and install the latest available update.',
          ),
          HelpStep(
            title: 'Clear cached data',
            detail: 'In your device settings, find the app and clear its cache (not its data).',
          ),
          HelpStep(
            title: 'Reinstall as a last resort',
            detail: 'Uninstall and reinstall the app if the problem continues after the steps above.',
          ),
        ],
        tips: const [
          'Clearing cache is safe and won\'t remove your saved data.',
        ],
      ),
      HelpTopic(
        title: 'Fix slow loading or lag',
        summary: 'Speed things up when screens take a long time to load.',
        icon: Icons.speed_outlined,
        steps: const [
          HelpStep(
            title: 'Check your connection',
            detail: 'Switch between Wi-Fi and mobile data to see if the issue is network related.',
          ),
          HelpStep(
            title: 'Close background apps',
            detail: 'Free up device memory by closing apps you\'re not using.',
          ),
          HelpStep(
            title: 'Reduce data usage in Settings',
            detail: 'Turn on "Data Saver" mode under Settings > General to load smaller images.',
          ),
        ],
      ),
      HelpTopic(
        title: 'Notifications aren\'t showing up',
        summary: 'Make sure important alerts reach you.',
        icon: Icons.notifications_off_outlined,
        steps: const [
          HelpStep(
            title: 'Check app permissions',
            detail: 'In your device settings, confirm notifications are allowed for this app.',
          ),
          HelpStep(
            title: 'Check in-app settings',
            detail: 'Open Settings > Notifications and make sure the categories you want are toggled on.',
          ),
          HelpStep(
            title: 'Disable battery optimization',
            detail: 'Some devices pause background activity — exclude the app from battery optimization.',
          ),
        ],
      ),
    ],
  ),
  HelpCategory(
    title: 'Privacy & Security',
    icon: Icons.privacy_tip_outlined,
    color: Colors.purple,
    topics: [
      HelpTopic(
        title: 'Turn on two-factor authentication',
        summary: 'Add an extra layer of protection to your account.',
        icon: Icons.security_outlined,
        steps: const [
          HelpStep(
            title: 'Open Security settings',
            detail: 'Go to Settings > Security > Two-Factor Authentication.',
          ),
          HelpStep(
            title: 'Choose a method',
            detail: 'Pick an authenticator app or SMS codes as your second factor.',
          ),
          HelpStep(
            title: 'Save your backup codes',
            detail: 'Store the one-time backup codes somewhere safe in case you lose your device.',
          ),
        ],
        tips: const [
          'An authenticator app is more secure than SMS codes.',
        ],
      ),
      HelpTopic(
        title: 'Control what data is shared',
        summary: 'Review and adjust what information is visible to others.',
        icon: Icons.visibility_outlined,
        steps: const [
          HelpStep(
            title: 'Open Privacy settings',
            detail: 'Go to Settings > Privacy to see all sharing controls in one place.',
          ),
          HelpStep(
            title: 'Adjust visibility toggles',
            detail: 'Switch off any data category you don\'t want visible to other users.',
          ),
          HelpStep(
            title: 'Review connected apps',
            detail: 'Check the "Connected Apps" list and remove access for anything you no longer use.',
          ),
        ],
      ),
      HelpTopic(
        title: 'Report a suspicious message',
        summary: 'Flag phishing attempts or abuse so our team can review them.',
        icon: Icons.flag_outlined,
        steps: const [
          HelpStep(
            title: 'Open the message',
            detail: 'Locate the suspicious message in your inbox or notifications.',
          ),
          HelpStep(
            title: 'Tap "Report"',
            detail: 'Use the report icon in the top-right corner of the message.',
          ),
          HelpStep(
            title: 'Choose a reason and submit',
            detail: 'Select the closest matching reason and add any extra details before submitting.',
          ),
        ],
        tips: const [
          'Never tap links or enter your password from an unexpected message.',
        ],
      ),
    ],
  ),
];
