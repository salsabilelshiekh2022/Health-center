// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Start`
  String get start {
    return Intl.message(
      'Start',
      name: 'start',
      desc: '',
      args: [],
    );
  }

  /// `Choose your doctor`
  String get onBoarding1_title {
    return Intl.message(
      'Choose your doctor',
      name: 'onBoarding1_title',
      desc: '',
      args: [],
    );
  }

  /// `Application provide you with alot of experienced doctors you can see these profile and choose one you want to appointment with him.`
  String get onBoarding1_sub_title {
    return Intl.message(
      'Application provide you with alot of experienced doctors you can see these profile and choose one you want to appointment with him.',
      name: 'onBoarding1_sub_title',
      desc: '',
      args: [],
    );
  }

  /// `Choose date and time`
  String get onBoarding2_title {
    return Intl.message(
      'Choose date and time',
      name: 'onBoarding2_title',
      desc: '',
      args: [],
    );
  }

  /// `The application can help you choose the appropriate date and time for you and the selected doctor.`
  String get onBoarding2_sub_title {
    return Intl.message(
      'The application can help you choose the appropriate date and time for you and the selected doctor.',
      name: 'onBoarding2_sub_title',
      desc: '',
      args: [],
    );
  }

  /// `Communicate with your doctor`
  String get onBoarding3_title {
    return Intl.message(
      'Communicate with your doctor',
      name: 'onBoarding3_title',
      desc: '',
      args: [],
    );
  }

  /// `Once you access the profile of doctoryou selected you can communicate with him and send any message `
  String get onBoarding3_sub_title {
    return Intl.message(
      'Once you access the profile of doctoryou selected you can communicate with him and send any message ',
      name: 'onBoarding3_sub_title',
      desc: '',
      args: [],
    );
  }

  /// `Let's Start with \n sign in`
  String get sign_in_message {
    return Intl.message(
      'Let\'s Start with \n sign in',
      name: 'sign_in_message',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get sign_in {
    return Intl.message(
      'Sign in',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get forgot_password {
    return Intl.message(
      'Forgot password?',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get do_not_have_account {
    return Intl.message(
      'Don\'t have an account?',
      name: 'do_not_have_account',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email for verification process we will send 5 digits code to your email`
  String get forgot_password_message {
    return Intl.message(
      'Enter your email for verification process we will send 5 digits code to your email',
      name: 'forgot_password_message',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get go_on {
    return Intl.message(
      'Continue',
      name: 'go_on',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get reset_password {
    return Intl.message(
      'Reset Password',
      name: 'reset_password',
      desc: '',
      args: [],
    );
  }

  /// `Enter the code you receive in mail and set the new password for your accountso you can login and access all the features`
  String get reset_password_message {
    return Intl.message(
      'Enter the code you receive in mail and set the new password for your accountso you can login and access all the features',
      name: 'reset_password_message',
      desc: '',
      args: [],
    );
  }

  /// `Enter the 5 digits code`
  String get enter_5_digits_code {
    return Intl.message(
      'Enter the 5 digits code',
      name: 'enter_5_digits_code',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirm_password {
    return Intl.message(
      'Confirm Password',
      name: 'confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `Let's Start with \n sign up`
  String get sign_up_message {
    return Intl.message(
      'Let\'s Start with \n sign up',
      name: 'sign_up_message',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get phone_number {
    return Intl.message(
      'Phone number',
      name: 'phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get sign_up {
    return Intl.message(
      'Sign up',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Have already an account?`
  String get already_have_account {
    return Intl.message(
      'Have already an account?',
      name: 'already_have_account',
      desc: '',
      args: [],
    );
  }

  /// `The code has been send to your mail `
  String get code_send {
    return Intl.message(
      'The code has been send to your mail ',
      name: 'code_send',
      desc: '',
      args: [],
    );
  }

  /// `Enter Code`
  String get enter_code {
    return Intl.message(
      'Enter Code',
      name: 'enter_code',
      desc: '',
      args: [],
    );
  }

  /// `Time Reminig`
  String get time_reminig {
    return Intl.message(
      'Time Reminig',
      name: 'time_reminig',
      desc: '',
      args: [],
    );
  }

  /// `Resend Code`
  String get resend_code {
    return Intl.message(
      'Resend Code',
      name: 'resend_code',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Congratulations`
  String get congratulations {
    return Intl.message(
      'Congratulations',
      name: 'congratulations',
      desc: '',
      args: [],
    );
  }

  /// `Your Registration Is Success \n Welcome to our app`
  String get success_register {
    return Intl.message(
      'Your Registration Is Success \n Welcome to our app',
      name: 'success_register',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Category`
  String get category {
    return Intl.message(
      'Category',
      name: 'category',
      desc: '',
      args: [],
    );
  }

  /// `See All`
  String get see_all {
    return Intl.message(
      'See All',
      name: 'see_all',
      desc: '',
      args: [],
    );
  }

  /// `Speech`
  String get speech {
    return Intl.message(
      'Speech',
      name: 'speech',
      desc: '',
      args: [],
    );
  }

  /// `Autism`
  String get autism {
    return Intl.message(
      'Autism',
      name: 'autism',
      desc: '',
      args: [],
    );
  }

  /// `Learning difficulties`
  String get learning_difficulties {
    return Intl.message(
      'Learning difficulties',
      name: 'learning_difficulties',
      desc: '',
      args: [],
    );
  }

  /// `Intelligence test`
  String get intelligence_test {
    return Intl.message(
      'Intelligence test',
      name: 'intelligence_test',
      desc: '',
      args: [],
    );
  }

  /// `Behavior modification`
  String get behavior_modification {
    return Intl.message(
      'Behavior modification',
      name: 'behavior_modification',
      desc: '',
      args: [],
    );
  }

  /// `Skills development`
  String get skills_development {
    return Intl.message(
      'Skills development',
      name: 'skills_development',
      desc: '',
      args: [],
    );
  }

  /// `Doctors`
  String get Doctors {
    return Intl.message(
      'Doctors',
      name: 'Doctors',
      desc: '',
      args: [],
    );
  }

  /// `experience`
  String get experience {
    return Intl.message(
      'experience',
      name: 'experience',
      desc: '',
      args: [],
    );
  }

  /// `Know more...`
  String get know_more {
    return Intl.message(
      'Know more...',
      name: 'know_more',
      desc: '',
      args: [],
    );
  }

  /// `Popular Doctor`
  String get popular_doctor {
    return Intl.message(
      'Popular Doctor',
      name: 'popular_doctor',
      desc: '',
      args: [],
    );
  }

  /// `Book a doctor`
  String get book_doctor {
    return Intl.message(
      'Book a doctor',
      name: 'book_doctor',
      desc: '',
      args: [],
    );
  }

  /// `years experience`
  String get years_of_experience {
    return Intl.message(
      'years experience',
      name: 'years_of_experience',
      desc: '',
      args: [],
    );
  }

  /// `Book a Date`
  String get book_date {
    return Intl.message(
      'Book a Date',
      name: 'book_date',
      desc: '',
      args: [],
    );
  }

  /// `Select a Time`
  String get select_time {
    return Intl.message(
      'Select a Time',
      name: 'select_time',
      desc: '',
      args: [],
    );
  }

  /// `Send Message`
  String get send_message {
    return Intl.message(
      'Send Message',
      name: 'send_message',
      desc: '',
      args: [],
    );
  }

  /// `Book Now`
  String get book_now {
    return Intl.message(
      'Book Now',
      name: 'book_now',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message(
      'Add',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `Payment methods`
  String get payment_methods {
    return Intl.message(
      'Payment methods',
      name: 'payment_methods',
      desc: '',
      args: [],
    );
  }

  /// `Expires`
  String get expires {
    return Intl.message(
      'Expires',
      name: 'expires',
      desc: '',
      args: [],
    );
  }

  /// `Current method`
  String get current_method {
    return Intl.message(
      'Current method',
      name: 'current_method',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'Cash payment' key

  /// `Default method`
  String get default_method {
    return Intl.message(
      'Default method',
      name: 'default_method',
      desc: '',
      args: [],
    );
  }

  /// `Choose desired vehicle type. We offer cars suitable\n for most every day needs.`
  String get choose_payment {
    return Intl.message(
      'Choose desired vehicle type. We offer cars suitable\n for most every day needs.',
      name: 'choose_payment',
      desc: '',
      args: [],
    );
  }

  /// `Your Appointment Is Success`
  String get success_payment {
    return Intl.message(
      'Your Appointment Is Success',
      name: 'success_payment',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Book`
  String get book {
    return Intl.message(
      'Book',
      name: 'book',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Figma ipsum component variant main layer. Library \n figma reesizing invite mask arrow ipsum \n community. Prototype main ellipse opacity \n community auto flatten link. List device rectangle \n figjam subtract. Font pixel selection image rotate.\n  Outline asset arrow library flatten blur. Style plugin \n union edit align.`
  String get test_text {
    return Intl.message(
      'Figma ipsum component variant main layer. Library \n figma reesizing invite mask arrow ipsum \n community. Prototype main ellipse opacity \n community auto flatten link. List device rectangle \n figjam subtract. Font pixel selection image rotate.\n  Outline asset arrow library flatten blur. Style plugin \n union edit align.',
      name: 'test_text',
      desc: '',
      args: [],
    );
  }

  /// `Field is required`
  String get field_is_require {
    return Intl.message(
      'Field is required',
      name: 'field_is_require',
      desc: '',
      args: [],
    );
  }

  /// `Please enter correct name`
  String get please_enter_correct_name {
    return Intl.message(
      'Please enter correct name',
      name: 'please_enter_correct_name',
      desc: '',
      args: [],
    );
  }

  /// `Please enter correct number`
  String get please_enter_correct_number {
    return Intl.message(
      'Please enter correct number',
      name: 'please_enter_correct_number',
      desc: '',
      args: [],
    );
  }

  /// `Please enter correct email`
  String get please_enter_correct_email {
    return Intl.message(
      'Please enter correct email',
      name: 'please_enter_correct_email',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 8 characters`
  String get password_must_be_at_least_8_character {
    return Intl.message(
      'Password must be at least 8 characters',
      name: 'password_must_be_at_least_8_character',
      desc: '',
      args: [],
    );
  }

  /// `Markaz ElAmal`
  String get markaz_elamal {
    return Intl.message(
      'Markaz ElAmal',
      name: 'markaz_elamal',
      desc: '',
      args: [],
    );
  }

  /// `Login Failed,try again`
  String get login_failed {
    return Intl.message(
      'Login Failed,try again',
      name: 'login_failed',
      desc: '',
      args: [],
    );
  }

  /// `Register Failed,try again`
  String get register_failed {
    return Intl.message(
      'Register Failed,try again',
      name: 'register_failed',
      desc: '',
      args: [],
    );
  }

  /// `Chats`
  String get chats {
    return Intl.message(
      'Chats',
      name: 'chats',
      desc: '',
      args: [],
    );
  }

  /// `The payment mission has been done\n for booking an appointment`
  String get payment_mission {
    return Intl.message(
      'The payment mission has been done\n for booking an appointment',
      name: 'payment_mission',
      desc: '',
      args: [],
    );
  }

  /// `Notification`
  String get notification {
    return Intl.message(
      'Notification',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `October 2,2023`
  String get october_date {
    return Intl.message(
      'October 2,2023',
      name: 'october_date',
      desc: '',
      args: [],
    );
  }

  /// `Select Date And Time`
  String get select_date {
    return Intl.message(
      'Select Date And Time',
      name: 'select_date',
      desc: '',
      args: [],
    );
  }

  /// `History details`
  String get history_details {
    return Intl.message(
      'History details',
      name: 'history_details',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get history {
    return Intl.message(
      'History',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `Profile Detailes`
  String get profile_detailes {
    return Intl.message(
      'Profile Detailes',
      name: 'profile_detailes',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Help`
  String get help {
    return Intl.message(
      'Help',
      name: 'help',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Available doctor`
  String get available_doctor {
    return Intl.message(
      'Available doctor',
      name: 'available_doctor',
      desc: '',
      args: [],
    );
  }

  /// `Hi Doctor`
  String get hi_doctor {
    return Intl.message(
      'Hi Doctor',
      name: 'hi_doctor',
      desc: '',
      args: [],
    );
  }

  /// `Can i help you ?`
  String get can_i_help {
    return Intl.message(
      'Can i help you ?',
      name: 'can_i_help',
      desc: '',
      args: [],
    );
  }

  /// `I am a patient i want to ask you about somthing !`
  String get patient_ask {
    return Intl.message(
      'I am a patient i want to ask you about somthing !',
      name: 'patient_ask',
      desc: '',
      args: [],
    );
  }

  /// `Hi, tell me how i can help you`
  String get doctor_answer {
    return Intl.message(
      'Hi, tell me how i can help you',
      name: 'doctor_answer',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get today {
    return Intl.message(
      'Today',
      name: 'today',
      desc: '',
      args: [],
    );
  }

  /// `Type message`
  String get type_message {
    return Intl.message(
      'Type message',
      name: 'type_message',
      desc: '',
      args: [],
    );
  }

  /// `Ammar Ahmed`
  String get ammar_ahmed {
    return Intl.message(
      'Ammar Ahmed',
      name: 'ammar_ahmed',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get full_name {
    return Intl.message(
      'Full Name',
      name: 'full_name',
      desc: '',
      args: [],
    );
  }

  /// `ammar21@gmail.com`
  String get ammar_gmail {
    return Intl.message(
      'ammar21@gmail.com',
      name: 'ammar_gmail',
      desc: '',
      args: [],
    );
  }

  /// `Account settings`
  String get account_settings {
    return Intl.message(
      'Account settings',
      name: 'account_settings',
      desc: '',
      args: [],
    );
  }

  /// `Profile Information`
  String get profile_information {
    return Intl.message(
      'Profile Information',
      name: 'profile_information',
      desc: '',
      args: [],
    );
  }

  /// `Name, Email, Security`
  String get name_email_security {
    return Intl.message(
      'Name, Email, Security',
      name: 'name_email_security',
      desc: '',
      args: [],
    );
  }

  /// `Privacy`
  String get privacy {
    return Intl.message(
      'Privacy',
      name: 'privacy',
      desc: '',
      args: [],
    );
  }

  /// `Control your privacy`
  String get control_privecy {
    return Intl.message(
      'Control your privacy',
      name: 'control_privecy',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get change_password {
    return Intl.message(
      'Change Password',
      name: 'change_password',
      desc: '',
      args: [],
    );
  }

  /// `Change your current password`
  String get change_current_password {
    return Intl.message(
      'Change your current password',
      name: 'change_current_password',
      desc: '',
      args: [],
    );
  }

  /// `General`
  String get General {
    return Intl.message(
      'General',
      name: 'General',
      desc: '',
      args: [],
    );
  }

  /// `Rate our App`
  String get rate_app {
    return Intl.message(
      'Rate our App',
      name: 'rate_app',
      desc: '',
      args: [],
    );
  }

  /// `Send Feedback`
  String get send_feedback {
    return Intl.message(
      'Send Feedback',
      name: 'send_feedback',
      desc: '',
      args: [],
    );
  }

  /// `Share your thought`
  String get share_your_thought {
    return Intl.message(
      'Share your thought',
      name: 'share_your_thought',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get edit_profile {
    return Intl.message(
      'Edit Profile',
      name: 'edit_profile',
      desc: '',
      args: [],
    );
  }

  /// `Current Passward`
  String get current_password {
    return Intl.message(
      'Current Passward',
      name: 'current_password',
      desc: '',
      args: [],
    );
  }

  /// `New Passward`
  String get New_Passward {
    return Intl.message(
      'New Passward',
      name: 'New_Passward',
      desc: '',
      args: [],
    );
  }

  /// `Confirm New Passward`
  String get confirm_new_passward {
    return Intl.message(
      'Confirm New Passward',
      name: 'confirm_new_passward',
      desc: '',
      args: [],
    );
  }

  /// `Cancle`
  String get cancle {
    return Intl.message(
      'Cancle',
      name: 'cancle',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Preferences`
  String get privacy_preferences {
    return Intl.message(
      'Privacy Preferences',
      name: 'privacy_preferences',
      desc: '',
      args: [],
    );
  }

  /// `Hi there, we don't want to keep any info that you're not comfortable sharing. We want our users to have 100% control of their informariton 100% of the time. Toggle below what you'd like to share and not share baring in mind the more you share with us the more tailored user experience you'll receive - thanks!`
  String get privacy_message {
    return Intl.message(
      'Hi there, we don\'t want to keep any info that you\'re not comfortable sharing. We want our users to have 100% control of their informariton 100% of the time. Toggle below what you\'d like to share and not share baring in mind the more you share with us the more tailored user experience you\'ll receive - thanks!',
      name: 'privacy_message',
      desc: '',
      args: [],
    );
  }

  /// `Recommendations`
  String get recommendations {
    return Intl.message(
      'Recommendations',
      name: 'recommendations',
      desc: '',
      args: [],
    );
  }

  /// `Save preferences`
  String get save_preferences {
    return Intl.message(
      'Save preferences',
      name: 'save_preferences',
      desc: '',
      args: [],
    );
  }

  /// `Send us your ratting !`
  String get Send_your_ratting {
    return Intl.message(
      'Send us your ratting !',
      name: 'Send_your_ratting',
      desc: '',
      args: [],
    );
  }

  /// `Your Comment`
  String get your_comment {
    return Intl.message(
      'Your Comment',
      name: 'your_comment',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Send us some feedback!`
  String get send_your_feedback {
    return Intl.message(
      'Send us some feedback!',
      name: 'send_your_feedback',
      desc: '',
      args: [],
    );
  }

  /// `Do you have a suggestion or found some bug!`
  String get have_suggestion {
    return Intl.message(
      'Do you have a suggestion or found some bug!',
      name: 'have_suggestion',
      desc: '',
      args: [],
    );
  }

  /// `Describe your issue or idea`
  String get describe_your_issue {
    return Intl.message(
      'Describe your issue or idea',
      name: 'describe_your_issue',
      desc: '',
      args: [],
    );
  }

  /// `Bug`
  String get bug {
    return Intl.message(
      'Bug',
      name: 'bug',
      desc: '',
      args: [],
    );
  }

  /// `Comment`
  String get comment {
    return Intl.message(
      'Comment',
      name: 'comment',
      desc: '',
      args: [],
    );
  }

  /// `Other`
  String get other {
    return Intl.message(
      'Other',
      name: 'other',
      desc: '',
      args: [],
    );
  }

  /// `See Yoy Soon`
  String get see_soon {
    return Intl.message(
      'See Yoy Soon',
      name: 'see_soon',
      desc: '',
      args: [],
    );
  }

  /// `You are about to logout. Are you sure this is what you want ?`
  String get logout_message {
    return Intl.message(
      'You are about to logout. Are you sure this is what you want ?',
      name: 'logout_message',
      desc: '',
      args: [],
    );
  }

  /// `Confirm logout`
  String get comfirm_logout {
    return Intl.message(
      'Confirm logout',
      name: 'comfirm_logout',
      desc: '',
      args: [],
    );
  }

  /// `Logout from all devices`
  String get logout_all_devices {
    return Intl.message(
      'Logout from all devices',
      name: 'logout_all_devices',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// ` Rate & Review us`
  String get rate_and_review {
    return Intl.message(
      ' Rate & Review us',
      name: 'rate_and_review',
      desc: '',
      args: [],
    );
  }

  /// `If we see you interact with somthing more, we will recommend more of that content.`
  String get recommendation_subtitle {
    return Intl.message(
      'If we see you interact with somthing more, we will recommend more of that content.',
      name: 'recommendation_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Comfirm`
  String get comfirm {
    return Intl.message(
      'Comfirm',
      name: 'comfirm',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
